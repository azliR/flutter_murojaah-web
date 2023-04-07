import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murojaah_web/listen/cubit/listen_cubit.dart';

class ListenButtons extends StatelessWidget {
  const ListenButtons({super.key});

  Future<void> _getRandomDataset(BuildContext context) async {
    final cubit = context.read<ListenCubit>();

    await cubit.getRandomDataset();
  }

  Future<void> _onSubmitPressed(BuildContext context) async {
    final cubit = context.read<ListenCubit>();

    await cubit.sendResponse(
      onSuccess: () async {
        await cubit.getRandomDataset();
      },
      onError: () async {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Row(
      children: [
        const Spacer(),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: data.size.width < 600 ? 4 : 8),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: data.size.width < 600 ? null : const Size(100, 48),
            ),
            onPressed: () => _getRandomDataset(context),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (data.size.width > 480) ...[
                  const Icon(Icons.refresh_rounded),
                  const SizedBox(width: 8),
                ],
                const Text('Refresh'),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: data.size.width < 600 ? 4 : 8),
          child: BlocSelector<ListenCubit, ListenState, bool>(
            selector: (state) => state.response != null,
            builder: (context, hasResponse) {
              return FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize:
                      data.size.width < 600 ? null : const Size(100, 48),
                ),
                onPressed: hasResponse ? () => _onSubmitPressed(context) : null,
                child: const Text('Kirim'),
              );
            },
          ),
        ),
      ],
    );
  }
}
