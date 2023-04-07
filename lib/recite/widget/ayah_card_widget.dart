import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:murojaah_web/app/model/ayah.dart';
import 'package:murojaah_web/recite/cubit/recite_cubit.dart';

class AyahCard extends StatelessWidget {
  const AyahCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return BlocSelector<ReciteCubit, ReciteState, Ayah>(
      selector: (state) => state.ayah,
      builder: (context, ayah) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (child, animation) {
            final rotateAnim =
                Tween<double>(begin: pi, end: 0).animate(animation);

            return AnimatedBuilder(
              animation: rotateAnim,
              child: child,
              builder: (context, child) {
                final isUnder = child?.key != ValueKey(ayah.ayahId);
                var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
                tilt *= isUnder ? -1.0 : 1.0;
                final value =
                    isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;

                return Transform(
                  transform: Matrix4.rotationY(value)..setEntry(3, 0, tilt),
                  alignment: Alignment.center,
                  child: child,
                );
              },
            );
          },
          layoutBuilder: (widget, list) =>
              Stack(children: [widget ?? const SizedBox(), ...list]),
          switchInCurve: Curves.easeOutBack,
          switchOutCurve: Curves.easeInBack,
          child: Card(
            key: ValueKey(ayah.ayahId),
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  ayah.ayahText,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.scheherazadeNew(
                    fontSize: data.size.width < 600 ? 28 : 32,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
