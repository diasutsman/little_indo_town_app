import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/favorite/favorite_menu_item.dart';
import 'package:responsive_grid/responsive_grid.dart';

class FavoriteMenuPage extends StatefulWidget {
  const FavoriteMenuPage({super.key});

  @override
  State<FavoriteMenuPage> createState() => _FavoriteMenuPageState();
}

class _FavoriteMenuPageState extends State<FavoriteMenuPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> myTabs = [
    const Tab(
      text: 'Favorite',
    ),
    const Tab(
      text: 'Recomendation',
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
            children: myTabs.map(
              (Tab tab) {
                return Container(
                  color: colorWhite2,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: ResponsiveGridRow(
                      children: [
                        for (var i = 0; i < 8; i++)
                          ResponsiveGridCol(
                            md: 3,
                            xs: 6,
                            child: FavoriteMenuItem(
                              onMenuItemTap: () {},
                            ),
                          )
                      ],
                    ),
                  ),
                );
                // return LayoutGrid(
                //   // set some flexible track sizes based on the crossAxisCount
                //   columnSizes: [1.fr, 1.fr],
                //   // set all the row sizes to auto (self-sizing height)
                //   rowSizes: const [auto, auto],
                //   rowGap: 16, // equivalent to mainAxisSpacing
                //   columnGap: 26, // equivalent to crossAxisSpacing
                //   // note: there's no childAspectRatio
                //   children: [
                //     // render all the cards with *automatic child placement*
                //     for (var i = 0; i < 8; i++)
                //       FavoriteMenuItem(
                //         onMenuItemTap: () {},
                //       ),
                //   ],
                // );
                // return Container(
                //   color: colorWhite2,
                //   child: GridView.builder(
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 24,
                //       vertical: 20,
                //     ),
                //     gridDelegate:
                //         const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2,
                //       childAspectRatio: 2 / 3,
                //       crossAxisSpacing: 25,
                //       mainAxisSpacing: 16,
                //     ),
                //     // gridDelegate:
                //     //     const SliverGridDelegateWithMaxCrossAxisExtent(
                //     //   maxCrossAxisExtent: 200,
                //     //   childAspectRatio: 2 / 3,
                //     //   crossAxisSpacing: 25,
                //     //   mainAxisSpacing: 16,
                //     // ),
                //     itemCount: 8,
                //     itemBuilder: (context, index) {
                //       return FavoriteMenuItem(
                //         onMenuItemTap: () {
                //           // Navigator.pushNamed(
                //           //   context,
                //           //   MenuRoutes.bintangBroMenuDetailRoute,
                //           //   arguments: BintangMenuDetailArguments(tab),
                //           // );
                //         },
                //       );
                //     },
                //   ),
                // );

                // child: LayoutGrid(
                //   // set some flexible track sizes based on the crossAxisCount
                //   columnSizes: [1.fr, 1.fr],
                //   // set all the row sizes to auto (self-sizing height)
                //   rowSizes: const [auto, auto],
                //   rowGap: 16, // equivalent to mainAxisSpacing
                //   columnGap: 26, // equivalent to crossAxisSpacing
                //   // note: there's no childAspectRatio
                //   children: [
                //     // render all the cards with *automatic child placement*
                // for (var i = 0; i < 8; i++)
                //   FavoriteMenuItem(
                //     onMenuItemTap: () {},
                //   ),
                //   ],
                // ),
                // );
              },
            ).toList(),
          ),
        )
      ],
    );
  }
}
