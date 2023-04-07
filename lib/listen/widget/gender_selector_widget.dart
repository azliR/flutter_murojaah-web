import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murojaah_web/listen/cubit/listen_cubit.dart';
import 'package:murojaah_web/listen/model/listen.dart';

class GenderSelector extends StatelessWidget {
  const GenderSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ListenCubit>();

    return BlocSelector<ListenCubit, ListenState, Gender?>(
      selector: (state) => state.response?.gender,
      builder: (context, gender) {
        return BlocSelector<ListenCubit, ListenState, bool>(
          selector: (state) => state.response != null,
          builder: (context, hasResponse) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    avatar: gender != Gender.male
                        ? const Icon(Icons.man_rounded)
                        : null,
                    label: const Text('Laki-laki'),
                    selected: gender == Gender.male,
                    onSelected: hasResponse
                        ? (value) {
                            final response = cubit.state.response;
                            if (response != null) {
                              cubit.changeResponse(
                                isLiked: response.isLiked,
                                gender: value ? Gender.male : null,
                              );
                            }
                          }
                        : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    avatar: gender != Gender.female
                        ? const Icon(Icons.woman_rounded)
                        : null,
                    label: const Text('Perempuan'),
                    selected: gender == Gender.female,
                    onSelected: hasResponse
                        ? (value) {
                            final response = cubit.state.response;
                            if (response != null) {
                              cubit.changeResponse(
                                isLiked: response.isLiked,
                                gender: value ? Gender.female : null,
                              );
                            }
                          }
                        : null,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
