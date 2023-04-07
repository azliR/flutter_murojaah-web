import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murojaah_web/recite/cubit/recite_cubit.dart';
import 'package:siri_wave/siri_wave.dart';

class RecordBar extends StatelessWidget {
  const RecordBar({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final cubit = context.read<ReciteCubit>();

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 2,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            gradient: LinearGradient(
              colors: [
                colorScheme.primary.withOpacity(0),
                colorScheme.primary.withOpacity(0.8),
                colorScheme.primary.withOpacity(0),
              ],
            ),
          ),
        ),
        SiriWave(
          controller: cubit.waveController,
          options: SiriWaveOptions(
            height: data.size.width < 600 ? 80 : 120,
            width: double.infinity,
            showSupportBar: false,
          ),
        ),
        BlocSelector<ReciteCubit, ReciteState, bool>(
          selector: (state) => state.isRecording,
          builder: (context, isRecording) {
            return ElevatedButton(
              onPressed: () async {
                if (isRecording) {
                  await cubit.stopRecording();
                } else {
                  await cubit.startRecording();
                }

                cubit.changeAmplitude(isRecording: !isRecording);
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: EdgeInsets.all(data.size.width < 600 ? 16 : 32),
              ),
              child: AnimatedSwitcher(
                transitionBuilder: (child, animation) =>
                    ScaleTransition(scale: animation, child: child),
                duration: const Duration(milliseconds: 300),
                child: isRecording
                    ? Icon(
                        key: const ValueKey('stop'),
                        Icons.stop_rounded,
                        size: data.size.width < 600 ? 28 : 36,
                      )
                    : Icon(
                        key: const ValueKey('mic'),
                        Icons.mic_rounded,
                        size: data.size.width < 600 ? 28 : 36,
                      ),
              ),
            );
          },
        ),
      ],
    );
  }
}
