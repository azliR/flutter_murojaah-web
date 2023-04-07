import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

Future<void> showCongratsDialog(BuildContext context) async {
  await showDialog<void>(
    context: context,
    builder: (context) => Stack(
      children: [
        AlertDialog(
          title: const Text('Terima kasih!'),
          content: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 480,
            ),
            child: const Text(
                'Anda telah berkontribusi dalam pengembangan model murojaah-ml. Semoga Allah SWT memberikan balasan yang lebih baik.',),
          ),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
        Align(
          child: ConfettiWidget(
            confettiController:
                ConfettiController(duration: const Duration(seconds: 1))
                  ..play(),
            blastDirectionality: BlastDirectionality.explosive,
            emissionFrequency: 1,
            blastDirection: -pi / 3,
            maxBlastForce: 100,
            minBlastForce: 80,
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink,
              Colors.orange,
              Colors.purple
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: ConfettiWidget(
            confettiController:
                ConfettiController(duration: const Duration(seconds: 1))
                  ..play(),
            emissionFrequency: 0.2,
            blastDirection: -pi / 3,
            maxBlastForce: 100,
            minBlastForce: 80,
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink,
              Colors.orange,
              Colors.purple
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ConfettiWidget(
            confettiController:
                ConfettiController(duration: const Duration(seconds: 1))
                  ..play(),
            emissionFrequency: 0.2,
            blastDirection: -pi / 1.5,
            maxBlastForce: 100,
            minBlastForce: 80,
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink,
              Colors.orange,
              Colors.purple
            ],
          ),
        ),
      ],
    ),
  );
}
