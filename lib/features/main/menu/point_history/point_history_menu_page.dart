import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_detail_arguments.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_item.dart';
import 'package:little_indo_town_app/features/main/menu/favorite/favorite_menu_item.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';
import 'package:little_indo_town_app/features/main/menu/order_history/order_history_menu_item.dart';
import 'package:little_indo_town_app/features/main/menu/order_history/order_state_constants.dart';
import 'package:little_indo_town_app/features/main/menu/point_history/point_history_menu_item.dart';
import 'package:little_indo_town_app/features/main/menu/point_history/point_state_constants.dart';
import 'package:responsive_grid/responsive_grid.dart';

class PointHistoryMenuPage extends StatefulWidget {
  const PointHistoryMenuPage({super.key});

  @override
  State<PointHistoryMenuPage> createState() => _PointHistoryMenuPageState();
}

class _PointHistoryMenuPageState extends State<PointHistoryMenuPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> _myTabs = [
    const Tab(
      text: PointStateConstants.used,
    ),
    const Tab(
      text: PointStateConstants.cancel,
    ),
  ];
  @override
  void initState() {
    _tabController = TabController(length: _myTabs.length, vsync: this);
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
            tabs: _myTabs,
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
            children: _myTabs.map(
              (Tab tab) {
                return Container(
                  color: colorWhite2,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 12,
                      );
                    },
                    itemCount: 24,
                    itemBuilder: (context, index) {
                      return PointHistoryMenuItem(
                        onMenuItemTap: () {},
                        pointState: tab.text.toString(),
                        month: [
                          "January",
                          "February",
                          "March",
                          "April",
                          "May",
                          "June",
                          "July",
                          "August",
                          "September",
                          "October",
                          "November",
                          "Desember"
                        ][index % DateTime.monthsPerYear],
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
