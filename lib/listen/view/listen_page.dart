import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:murojaah_web/injection.dart';
import 'package:murojaah_web/listen/cubit/listen_cubit.dart';
import 'package:murojaah_web/listen/widget/ayah_card_widget.dart';
import 'package:murojaah_web/listen/widget/gender_selector_widget.dart';
import 'package:murojaah_web/listen/widget/listen_bar_widget.dart';
import 'package:murojaah_web/listen/widget/listen_buttons_widget.dart';

@RoutePage()
class ListenPage extends StatefulWidget with AutoRouteWrapper {
  const ListenPage({super.key});

  @override
  State<ListenPage> createState() => _ListenPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    EasyLoading.show(status: 'Memuat');

    final cubit = getIt<ListenCubit>();
    cubit.getRandomDataset().whenComplete(
      () {
        Future.delayed(const Duration(milliseconds: 400), () {
          cubit.changeAmplitude(isPlaying: false);
        });
      },
    );

    return BlocProvider(
      create: (_) => cubit,
      child: MultiBlocListener(
        listeners: [
          BlocListener<ListenCubit, ListenState>(
            listenWhen: (previous, current) =>
                previous.isPlaying != current.isPlaying,
            listener: (context, state) {
              cubit.changeAmplitude(isPlaying: state.isPlaying);
            },
          ),
          BlocListener<ListenCubit, ListenState>(
            listenWhen: (previous, current) =>
                previous.isLoading != current.isLoading,
            listener: (context, state) async {
              if (state.isLoading) {
                await EasyLoading.show(status: 'Memuat');
              } else {
                await EasyLoading.dismiss();
              }
            },
          ),
        ],
        child: this,
      ),
    );
  }
}

class _ListenPageState extends State<ListenPage> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        const SizedBox(height: 16),
        Expanded(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: data.size.width < 600 ? 1 : 0.9,
              child: const AyahCard(),
            ),
          ),
        ),
        BlocSelector<ListenCubit, ListenState, String>(
          selector: (state) => state.errorMessage,
          builder: (context, errorMessage) {
            return Text(
              errorMessage,
              style: textTheme.labelLarge?.copyWith(
                color: colorScheme.outline,
                fontStyle: FontStyle.italic,
              ),
            );
          },
        ),
        const SizedBox(height: 8),
        const GenderSelector(),
        const ListenBar(),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: ListenButtons(),
        ),
      ],
    );
  }
}
