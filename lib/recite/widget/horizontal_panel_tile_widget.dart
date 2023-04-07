import 'package:flutter/material.dart';

class HorizontalPanelTile extends StatelessWidget {
  const HorizontalPanelTile({
    required this.onHovered,
    required this.selected,
    required this.children,
    super.key,
  });

  final void Function() onHovered;
  final bool selected;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return MouseRegion(
      onEnter: (event) => onHovered(),
      child: GestureDetector(
        onTap: onHovered,
        child: Container(
          padding: const EdgeInsets.all(4),
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
            child: AnimatedSize(
              duration: const Duration(milliseconds: 200),
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
