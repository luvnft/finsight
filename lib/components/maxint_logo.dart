import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaxintLogo extends StatelessWidget {
  final bool _full;
  final bool _compact;
  const MaxintLogo({super.key})
      : _full = false,
        _compact = false;

  const MaxintLogo.full({super.key})
      : _full = true,
        _compact = false;

  const MaxintLogo.compact({super.key})
      : _full = false,
        _compact = true;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: RichText(
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        text: TextSpan(
          children: [
            TextSpan(
              text: "M",
              style: (_compact ? textTheme.bodyLarge : textTheme.headlineMedium)!
                  .copyWith(
                fontFamily: "BC Alphapipe",
                fontWeight: FontWeight.w600,
                // letterSpacing: 2,
              ),
            ),
            if (_full)
              TextSpan(
                text: "axint",
                style: GoogleFonts.genosTextTheme(textTheme)
                    .headlineMedium
                    ?.copyWith(
                  fontFamily: "BC Alphapipe",
                  fontWeight: FontWeight.w600,
                      // letterSpacing: 2,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
