import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murojaah_web/listen/cubit/listen_cubit.dart';
import 'package:siri_wave/siri_wave.dart';

class ListenBar extends StatelessWidget {
  const ListenBar({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final cubit = context.read<ListenCubit>();
    final colorScheme = Theme.of(context).colorScheme;

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
        BlocBuilder<ListenCubit, ListenState>(
          buildWhen: (previous, current) =>
              previous.isPlaying != current.isPlaying ||
              previous.hasListened != current.hasListened,
          builder: (context, state) {
            final isPlaying = state.isPlaying;
            final hasListened = state.hasListened;

            return BlocSelector<ListenCubit, ListenState, bool?>(
              selector: (state) => state.response?.isLiked,
              builder: (context, isLiked) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(16),
                        disabledBackgroundColor: colorScheme.background,
                      ),
                      onPressed: hasListened
                          ? () => cubit.changeResponse(isLiked: false)
                          : null,
                      child: Icon(
                        isLiked != null && !isLiked
                            ? Icons.thumb_down_alt_rounded
                            : Icons.thumb_down_alt_outlined,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        isPlaying
                            ? cubit.stopListening()
                            : cubit.startListening();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding:
                            EdgeInsets.all(data.size.width < 600 ? 16 : 32),
                      ),
                      child: AnimatedSwitcher(
                        transitionBuilder: (child, animation) {
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );
                        },
                        duration: const Duration(milliseconds: 300),
                        child: isPlaying
                            ? Icon(
                                key: const ValueKey('stop'),
                                Icons.stop_rounded,
                                size: data.size.width < 600 ? 28 : 36,
                              )
                            : Icon(
                                key: const ValueKey('play'),
                                Icons.play_arrow_rounded,
                                size: data.size.width < 600 ? 28 : 36,
                              ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(16),
                        disabledBackgroundColor: colorScheme.background,
                      ),
                      onPressed: hasListened
                          ? () => cubit.changeResponse(isLiked: true)
                          : null,
                      child: Icon(
                        isLiked != null && isLiked
                            ? Icons.thumb_up_alt_rounded
                            : Icons.thumb_up_alt_outlined,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
