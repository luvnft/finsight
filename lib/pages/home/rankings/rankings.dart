import 'package:finsight/collections/icons.dart';
import 'package:finsight/components/chip_selector/chip_selector.dart';
import 'package:finsight/components/chip_selector/selectable_chip.dart';
import 'package:finsight/pages/home/rankings/tabs/credit.dart';
import 'package:finsight/pages/home/rankings/tabs/deposit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RankingsPage extends HookConsumerWidget {
  static const name = "RankingsPage";
  const RankingsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final tabController = useTabController(initialLength: 2);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text('Rankings'),
                titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                centerTitle: false,
                backgroundColor: Colors.transparent,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(48),
                  child: ListenableBuilder(
                    listenable: tabController,
                    builder: (context, _) {
                      return ChipSelector<int>(
                        value: tabController.index,
                        onChanged: (value) {
                          tabController.animateTo(value);
                        },
                        options: const {
                          0: SelectableChip(
                            icon: Icon(AppIcons.cash),
                            label: Text("Deposit"),
                          ),
                          1: SelectableChip(
                            icon: Icon(AppIcons.creditCard),
                            label: Text("Credit"),
                          ),
                        },
                      );
                    },
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: const [
              RankingsPageDepositTab(),
              RankingsPageCreditTab(),
            ],
          ),
        ),
      ),
    );
  }
}
