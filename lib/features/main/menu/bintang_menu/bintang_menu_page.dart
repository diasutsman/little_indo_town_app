import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_detail_arguments.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_item.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';

class BintangMenuPage extends StatefulWidget {
  const BintangMenuPage({super.key});

  @override
  State<BintangMenuPage> createState() => _BintangMenuPageState();
}

class _BintangMenuPageState extends State<BintangMenuPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> myTabs = [
    const Tab(
      text: 'Menu Promosi',
    ),
    const Tab(
      text: 'Burger & Wraps',
    ),
    const Tab(
      text: 'Signature Chicken',
    ),
    const Tab(
      text: 'Meal Combo With',
    ),
  ];
  @override
  void initState() {
    _tabController = TabController(length: myTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: colorWhite,
          child: TabBar(
            dividerColor: null,
            onTap: (index) {},
            tabAlignment: TabAlignment.start,
            padding: EdgeInsets.zero,
            tabs: myTabs,
            controller: _tabController,
            unselectedLabelColor: colorBlack,
            labelColor: colorPrimary,
            indicatorColor: colorPrimary,
            isScrollable: true,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: myTabs.map(
              (Tab tab) {
                return Container(
                  color: colorWhite2,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 20,
                    ),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 8,
                      );
                    },
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return BintangMenuItem(
                        onMenuItemTap: () {
                          Navigator.pushNamed(
                            context,
                            MenuRoutes.bintangBroMenuDetailRoute,
                            arguments: BintangMenuDetailArguments(tab),
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ).toList(),
          ),
        )
      ],
    );
  }
}
