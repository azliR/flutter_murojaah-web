import 'package:flutter/material.dart';

class SidePanelTile extends StatelessWidget {
  const SidePanelTile({
    required this.selected,
    required this.children,
    super.key,
  });

  final bool selected;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: selected
            ? Border.all(
                color: colorScheme.primary,
                width: 2,
              )
            : null,
        borderRadius: BorderRadius.circular(16),
        color: colorScheme.surfaceVariant,
      ),
      child: IconTheme(
        data: IconThemeData(
          color: colorScheme.secondary,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
