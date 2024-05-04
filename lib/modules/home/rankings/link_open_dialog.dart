import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LinkOpenDialog extends HookConsumerWidget {
  final String link;
  const LinkOpenDialog({super.key, required this.link});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:colorScheme) = Theme.of(context);

    return AlertDialog(
      title: const Text("Opening a link"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("This will open following link in your browser"),
          const Gap(8),
          Card.filled(
            color: colorScheme.surface,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                link,
                // Use mono space font for the link
                style: GoogleFonts.robotoMono(),
              ),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text("Cancel"),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(true),
          style: FilledButton.styleFrom(
            backgroundColor: colorScheme.errorContainer,
            foregroundColor: colorScheme.error,
            elevation: 0,
          ),
          child: const Text("Open"),
        ),
      ],
    );
  }
}
