import 'dart:ui';

import 'package:finsight/components/chip_selector/selectable_chip.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChipSelector<K> extends HookConsumerWidget {
  final K value;
  final Map<K, SelectableChip> options;
  final ValueChanged<K> onChanged;
  const ChipSelector({
    super.key,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme, :dividerColor, :colorScheme) =
        Theme.of(context);

    return SizedBox(
      height: 40,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: PointerDeviceKind.values.toSet(),
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: options.length,
          separatorBuilder: (context, index) => const Gap(8),
          itemBuilder: (context, index) {
            final key = options.keys.elementAt(index);
            final chip = options[key]!;
            return ChoiceChip(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(color: dividerColor.withOpacity(0.1)),
              elevation: 0,
              pressElevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              showCheckmark: false,
              labelPadding: const EdgeInsets.only(right: 8),
              color: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.selected)) {
                  return colorScheme.primaryContainer;
                }
                return colorScheme.surface;
              }),
              labelStyle:
                  textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w900),
              label: chip.label,
              avatar: chip.icon,
              selected: key == value,
              onSelected: (selected) {
                if (selected) {
                  onChanged(key);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
