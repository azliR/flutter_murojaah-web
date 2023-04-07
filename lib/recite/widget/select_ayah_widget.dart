import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murojaah_web/app/constant/surah_list.dart';
import 'package:murojaah_web/app/model/ayah.dart';
import 'package:murojaah_web/app/model/surah.dart';
import 'package:murojaah_web/recite/cubit/recite_cubit.dart';

class SelectAyah extends StatelessWidget {
  const SelectAyah({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReciteCubit>();

    return BlocBuilder<ReciteCubit, ReciteState>(
      buildWhen: (previous, current) =>
          previous.surah != current.surah ||
          previous.ayah != current.ayah ||
          previous.isRecording != current.isRecording,
      builder: (context, state) {
        final surah = state.surah;
        final ayah = state.ayah;
        final isRecording = state.isRecording;

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownMenu<Surah>(
              initialSelection: surah,
              enableSearch: false,
              requestFocusOnTap: false,
              enabled: !isRecording,
              label: const Text('Surah'),
              dropdownMenuEntries: surahs
                  .take(1)
                  .map(
                    (surah) => DropdownMenuEntry(
                      value: surah,
                      label: '${surah.id}. ${surah.surahName}',
                    ),
                  )
                  .toList(),
              onSelected: (surah) {
                if (surah != null) {
                  cubit.changeAyah(surah: surah, ayah: surah.ayahs.first);
                }
              },
            ),
            const SizedBox(width: 8),
            DropdownMenu<Ayah>(
              key: ValueKey(surah.id),
              enableSearch: false,
              requestFocusOnTap: false,
              enabled: !isRecording,
              initialSelection: ayah,
              label: const Text('Ayat'),
              dropdownMenuEntries: surah.ayahs
                  .map(
                    (ayah) => DropdownMenuEntry(
                      value: ayah,
                      label: '${ayah.ayahNumber}',
                    ),
                  )
                  .toList(),
              onSelected: (ayah) {
                if (ayah != null) {
                  cubit.changeAyah(surah: surah, ayah: ayah);
                }
              },
            ),
          ],
        );
      },
    );
  }
}
