import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/cubit/main_cubit.dart';
import 'package:little_indo_town_app/features/main/location/location_cubit.dart';
import 'package:little_indo_town_app/features/main/location/location_item.dart';
import 'package:little_indo_town_app/features/main/order/order_cubit.dart';
import 'package:little_indo_town_app/features/main/order/order_item.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderCubit orderCubit = context.read();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: colorTransparent,
        shadowColor: colorTransparent,
        scrolledUnderElevation: 0,
        backgroundColor: colorWhite,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.icons.appIcon,
              height: 35,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              t.main_menu.order,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: colorPrimary,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // orderCubit.searchController.openView();
              showSearch(context: context, delegate: _SearchItem());
            },
            icon: const Icon(Icons.search_rounded),
            iconSize: 34,
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.images.restaurantMap,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OrderItem(
                    onOrderPressed: () {
                      print("s");
                      context.read<MainCubit>().setTab(MainTab.menu);
                    },
                  ),
                ],
              ),
            ),
          ),
          // Positioned.fill(
          //   child: SearchAnchor(
          //     viewBackgroundColor: colorLightGray6,
          //     searchController: orderCubit.searchController,
          //     builder: (context, controller) {
          //       return const SizedBox();
          //     },
          //     viewOnSubmitted: (value) {
          //       context.read<MainCubit>().setTab(MainTab.menu);
          //     },
          //     suggestionsBuilder: (context, controller) {
          //       return [
          //         ...List.generate(
          //           5,
          //           (_) {
          //             return MultiBlocProvider(
          //               providers: [
          //                 BlocProvider(
          //                   create: (context) => MainCubit(),
          //                 ),
          //                 BlocProvider(
          //                   create: (context) => LocationCubit(),
          //                 ),
          //               ],
          //               child: Builder(builder: (context) {
          // return Padding(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 32,
          //     vertical: 16,
          //   ),
          //   child: OrderItem(
          //     isIconShown: false,
          //     onOrderPressed: () {
          //       orderCubit.searchController.closeView(null);
          //       context.read<MainCubit>().setTab(MainTab.menu);
          //     },
          //   ),
          // );
          //               }),
          //             );
          //           },
          //         ),
          //         const SizedBox(
          //           height: 250,
          //         ),
          //       ];
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}

class _SearchItem extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("Result");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
          child: OrderItem(
            isIconShown: false,
            onOrderPressed: () {
              context.read<MainCubit>().setTab(MainTab.menu);
            },
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
