import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:murojaah_web/app/utils/congrats.dart';
import 'package:murojaah_web/recite/cubit/recite_cubit.dart';

class RecordButtons extends StatelessWidget {
  const RecordButtons({super.key});

  Future<bool?> _showPrivacyPolicyDialog(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Apa ini?'),
        content: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 480,
          ),
          child: const Text(
            'Rekamanan akan didonasikan secara anonim dan HANYA akan digunakan untuk kepentingan pengembangan model murojaah-ml.',
          ),
        ),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('Batal'),
          ),
          FilledButton(
            autofocus: true,
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('Baik'),
          ),
        ],
      ),
    );
  }

  Future<void> _onSubmitPressed(BuildContext context) async {
    final cubit = context.read<ReciteCubit>();

    final isAccept = await _showPrivacyPolicyDialog(context);
    if (isAccept == null || !isAccept) return;

    await EasyLoading.show(status: 'Mengirim...');

    await cubit.saveDataset(
      onSuccess: () async {
        await EasyLoading.dismiss();
        await showCongratsDialog(context);
        await cubit.nextAyah();
      },
      onError: () async {
        await EasyLoading.dismiss();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final cubit = context.read<ReciteCubit>();

    return BlocSelector<ReciteCubit, ReciteState, bool>(
      selector: (state) => state.isRecording,
      builder: (context, isRecording) {
        return Row(
          children: [
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: data.size.width < 600 ? 4 : 8),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize:
                      data.size.width < 600 ? null : const Size(100, 48),
                ),
                onPressed: cubit.nextAyah,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (data.size.width > 480) ...[
                      const Icon(Icons.keyboard_double_arrow_right_rounded),
                      const SizedBox(width: 8),
                    ],
                    const Text('Selanjutnya'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: data.size.width < 600 ? 4 : 8),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize:
                      data.size.width < 600 ? null : const Size(100, 48),
                ),
                onPressed: isRecording ? null : cubit.randomiseAyah,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (data.size.width > 480) ...[
                      const Icon(Icons.shuffle_rounded),
                      const SizedBox(width: 8),
                    ],
                    const Text('Acak'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: data.size.width < 600 ? 4 : 8),
              child: BlocSelector<ReciteCubit, ReciteState, bool>(
                selector: (state) => state.recordings.isNotEmpty,
                builder: (context, isRecordingsNotEmpty) {
                  return FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize:
                          data.size.width < 600 ? null : const Size(100, 48),
                    ),
                    onPressed: isRecordingsNotEmpty && !isRecording
                        ? () => _onSubmitPressed(context)
                        : null,
                    child: const Text('Kirim'),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
