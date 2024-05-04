import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:finsight/collections/constants.dart';
import 'package:finsight/collections/icons.dart';
import 'package:finsight/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CreditsItem extends HookWidget {
  final SupabaseCredit credit;

  const CreditsItem({super.key, required this.credit});

  @override
  Widget build(BuildContext context) {
    final ThemeData(:dividerColor, :textTheme) = Theme.of(context);
    final imgBuffer = useMemoized(
      () => base64Decode(credit.imageExternalUrl),
      [credit.imageExternalUrl],
    );

    return ListTile(
      horizontalTitleGap: 12,
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: dividerColor.withOpacity(.1)),
        borderRadius: BorderRadius.circular(8),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(2.0),
        child: Image.memory(imgBuffer, width: 36),
      ),
      title: AutoSizeText(
        credit.name,
        maxLines: 2,
        minFontSize: 14,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          credit.introBonus,
          style: textTheme.bodySmall?.copyWith(
            color: dividerColor,
          ),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            formatCurrency.format(credit.estimatedEarning),
            style: textTheme.titleLarge,
          ),
          // const Icon(AppIcons.angleRight),
        ],
      ),
      // onTap: () {
      // context.pushNamed(
      //   CreditsScreen.id,
      //   pathParameters: {"id": credit.id},
      // );
      // },
    );
  }
}
