import 'package:finsight/modules/home/rankings/offer/apy_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OfferScreenOffer extends StatelessWidget {
  final String offerName;
  final String offerer;
  final String website;
  final OfferScreenApyCardSection apyCardSection;

  final List<({String title, String trailing, bool isRed})> details;

  const OfferScreenOffer({
    super.key,
    required this.offerName,
    required this.offerer,
    required this.website,
    required this.apyCardSection,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData(:textTheme, :dividerColor, :colorScheme) =
        Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(offerName),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: apyCardSection),
            const SliverGap(20),
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Text(offerer, style: textTheme.titleLarge),
              centerTitle: false,
            ),
            const SliverToBoxAdapter(child: Divider(indent: 5, endIndent: 5)),
            SliverList.separated(
              separatorBuilder: (context, index) =>
                  const Divider(indent: 5, endIndent: 5),
              itemCount: details.length,
              itemBuilder: (context, index) {
                final detail = details[index];
                return ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  title: Text(detail.title),
                  titleTextStyle: textTheme.titleMedium?.copyWith(
                    color: dividerColor,
                  ),
                  trailing: Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: detail.isRed
                        ? colorScheme.errorContainer
                        : colorScheme.primaryContainer,
                    label: Text(
                      detail.trailing,
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: detail.isRed
                            ? colorScheme.error
                            : colorScheme.primary,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SliverToBoxAdapter(child: Divider(indent: 5, endIndent: 5)),
            const SliverGap(20),
            SliverToBoxAdapter(
              child: OutlinedButton(
                onPressed: () async {
                  launchUrlString(
                    website,
                    mode: LaunchMode.externalApplication,
                  );
                },
                child: const Text("Get It Now"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
