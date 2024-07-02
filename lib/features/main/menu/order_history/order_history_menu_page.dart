import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_detail_arguments.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_item.dart';
import 'package:little_indo_town_app/features/main/menu/favorite/favorite_menu_item.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';
import 'package:little_indo_town_app/features/main/menu/order_history/order_history_menu_item.dart';
import 'package:little_indo_town_app/features/main/menu/order_history/order_state_constants.dart';
import 'package:responsive_grid/responsive_grid.dart';

class OrderHistoryMenuPage extends StatefulWidget {
  const OrderHistoryMenuPage({super.key});

  @override
  State<OrderHistoryMenuPage> createState() => _OrderHistoryMenuPageState();
}

class _OrderHistoryMenuPageState extends State<OrderHistoryMenuPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> _myTabs = [
    const Tab(
      text: OrderStateConstants.orderNow,
    ),
    const Tab(
      text: OrderStateConstants.process,
    ),
    const Tab(
      text: OrderStateConstants.done,
    ),
    const Tab(
      text: OrderStateConstants.cancel,
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
        // Expanded(
        //   child: LayoutGrid(
        //     // set some flexible track sizes based on the crossAxisCount
        //     columnSizes: [1.fr, 1.fr],
        //     // set all the row sizes to auto (self-sizing height)
        //     rowSizes: const [auto, auto],
        //     rowGap: 16, // equivalent to mainAxisSpacing
        //     columnGap: 26, // equivalent to crossAxisSpacing
        //     // note: there's no childAspectRatio
        //     children: [
        //       // render all the cards with *automatic child placement*
        //       for (var i = 0; i < 8; i++)
        //         FavoriteMenuItem(
        //           onMenuItemTap: () {},
        //         ),
        //     ],
        //   ),
        // )
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: _myTabs.map(
              (Tab tab) {
                return Container(
                  color: colorWhite2,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 18,
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return OrderHistoryMenuItem(
                        onMenuItemTap: () {},
                        orderState: tab.text.toString(),
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
