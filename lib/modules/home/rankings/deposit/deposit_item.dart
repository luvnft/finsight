import 'dart:convert';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:finsight/collections/constants.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/rankings/link_open_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DepositItem extends HookWidget {
  final SupabaseDeposit deposit;
  const DepositItem({super.key, required this.deposit});

  @override
  Widget build(BuildContext context) {
    final ThemeData(:textTheme, :dividerColor) = Theme.of(context);

    final imageBytes = useMemoized(
      () => base64Decode(deposit.imageExternalUrl.split(',').last),
      [deposit.imageExternalUrl],
    );

    return Tooltip(
      message: deposit.offerName,
      child: ListTile(
        horizontalTitleGap: 12,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: dividerColor.withOpacity(.1)),
          borderRadius: BorderRadius.circular(8),
        ),
        leading: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(2)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Image.memory(
                  imageBytes,
                  width: 36,
                  errorBuilder: (context, _, __) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
        ),
        title: AutoSizeText(
          deposit.offerName.split("- ").first.trim(),
          maxLines: 1,
          minFontSize: 14,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            deposit.bankName,
            style: textTheme.bodySmall?.copyWith(
              color: dividerColor,
            ),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              formatPercentageWithDecimal.format((deposit.offerAPY ?? 0) / 100),
              style: textTheme.titleLarge,
            ),
            // const Icon(AppIcons.angleRight),
          ],
        ),
        onTap: () async {
          final allows = await showDialog<bool>(
            context: context,
            builder: (context) => LinkOpenDialog(link: deposit.website),
          );
          if (allows == false) return;
          await launchUrlString(deposit.website);
        },
      ),
    );
  }
}
