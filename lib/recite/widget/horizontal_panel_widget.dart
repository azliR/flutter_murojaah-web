import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murojaah_web/recite/cubit/recite_cubit.dart';
import 'package:murojaah_web/recite/widget/horizontal_panel_tile_widget.dart';

class HorizontalPanel extends StatefulWidget {
  HorizontalPanel({super.key});

  @override
  State<HorizontalPanel> createState() => _HorizontalPanelState();
}

class _HorizontalPanelState extends State<HorizontalPanel> {
  var _selectedIndex = 0;

  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReciteCubit>();
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BlocListener<ReciteCubit, ReciteState>(
      listenWhen: (previous, current) =>
          previous.recordings.length != current.recordings.length,
      listener: (context, state) {
        _setSelectedIndex(state.recordings.length);
      },
      child: Material(
        color: ElevationOverlay.applySurfaceTint(
          colorScheme.surface,
          colorScheme.surfaceTint,
          1,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: BlocBuilder<ReciteCubit, ReciteState>(
          buildWhen: (previous, current) =>
              previous.recordings != current.recordings ||
              previous.playingRecordingIndex != current.playingRecordingIndex ||
              previous.isRecording != current.isRecording,
          builder: (context, state) {
            return BlocSelector<ReciteCubit, ReciteState, int>(
              selector: (state) => state.recordings.indexWhere(
                (recording) =>
                    recording.surah == state.surah &&
                    recording.ayah == state.ayah,
              ),
              builder: (context, reRecordIndex) {
                final recordings = state.recordings;
                final playingRecordingIndex = state.playingRecordingIndex;
                final isRecording = state.isRecording;

                return ListView.separated(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemCount: recordings.length + 1,
                  itemBuilder: (context, index) {
                    if (index == recordings.length) {
                      if (reRecordIndex != -1) {
                        return const SizedBox();
                      }
                      return HorizontalPanelTile(
                        onHovered: () => _setSelectedIndex(index),
                        selected: true,
                        children: [
                          if (_selectedIndex == index)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: SizedBox(
                                width: 120,
                                child: Text(
                                  'Klik microphone untuk merekam',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ),
                          CircleAvatar(
                            backgroundColor: colorScheme.secondary,
                            foregroundColor: colorScheme.onSecondary,
                            child: Text((index + 1).toString()),
                          )
                        ],
                      );
                    }
                    final recording = recordings[index];

                    return HorizontalPanelTile(
                      onHovered: () => _setSelectedIndex(index),
                      selected: reRecordIndex == index,
                      children: [
                        if (_selectedIndex == index) ...[
                          IconButton(
                            icon: Icon(
                              playingRecordingIndex == index
                                  ? Icons.stop_rounded
                                  : Icons.play_arrow_rounded,
                            ),
                            onPressed: isRecording
                                ? null
                                : () async {
                                    if (cubit.state.playingRecordingIndex ==
                                        index) {
                                      await cubit.stopAudio();
                                    } else {
                                      await cubit.playAudio(index: index);
                                    }
                                  },
                          ),
                          IconButton(
                            icon: const Icon(Icons.replay),
                            onPressed: isRecording
                                ? null
                                : () => cubit.reRecord(index),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: isRecording
                                ? null
                                : () => cubit.deleteRecording(index),
                          ),
                        ],
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: colorScheme.secondary,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: DefaultTextStyle(
                            style: textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSecondary,
                                ) ??
                                const TextStyle(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Q.S.'),
                                Text(
                                  '${recording.surah.id}:${recording.ayah.ayahNumber}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
