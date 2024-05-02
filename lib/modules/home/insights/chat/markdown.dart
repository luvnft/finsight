import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart';

class MarkdownText extends StatelessWidget {
  final String text;
  const MarkdownText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      selectable: true,
      data: text,
      extensionSet: ExtensionSet(
        ExtensionSet.gitHubFlavored.blockSyntaxes,
        [EmojiSyntax(), ...ExtensionSet.gitHubFlavored.inlineSyntaxes],
      ),
    );
  }
}
