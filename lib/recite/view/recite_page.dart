import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murojaah_web/injection.dart';
import 'package:murojaah_web/recite/cubit/recite_cubit.dart';
import 'package:murojaah_web/recite/widget/ayah_card_widget.dart';
import 'package:murojaah_web/recite/widget/horizontal_panel_widget.dart';
import 'package:murojaah_web/recite/widget/record_bar_widget.dart';
import 'package:murojaah_web/recite/widget/record_buttons_widget.dart';
import 'package:murojaah_web/recite/widget/select_ayah_widget.dart';
import 'package:murojaah_web/recite/widget/side_panel_widget.dart';

@RoutePage()
class RecitePage extends StatefulWidget with AutoRouteWrapper {
  const RecitePage({super.key});

  @override
  State<RecitePage> createState() => _RecitePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ReciteCubit>(
      create: (_) => getIt<ReciteCubit>()..randomiseAyah(),
      child: this,
    );
  }
}

class _RecitePageState extends State<RecitePage> {
  @override
  void initState() {
    final cubit = context.read<ReciteCubit>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 400), () {
        cubit.changeAmplitude(isRecording: false);
      });
    });

    super.initState();
  }

  @override
  void didChangeDependencies() {
    final cubit = context.read<ReciteCubit>();

    final colorScheme = Theme.of(context).colorScheme;
    cubit.waveController.setColor(colorScheme.primary);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 16),
              const SelectAyah(),
              Expanded(
                child: FractionallySizedBox(
                  widthFactor: data.size.width < 600 ? 1 : 0.9,
                  heightFactor: 1,
                  child: const AyahCard(),
                ),
              ),
              if (data.size.width <= 1024)
                SizedBox(
                  height: 72,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: HorizontalPanel(),
                  ),
                ),
              BlocSelector<ReciteCubit, ReciteState, String>(
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
              const RecordBar(),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: RecordButtons(),
              )
            ],
          ),
        ),
        if (data.size.width > 1024)
          const SizedBox(
            width: 280,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SidePanel(),
            ),
          )
      ],
    );
  }
}
