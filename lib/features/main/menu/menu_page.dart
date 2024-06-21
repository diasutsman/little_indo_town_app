import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/home/widgets/home_off20_widget.dart';
import 'package:little_indo_town_app/features/main/menu/your_point_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: colorPastel,
        width: double.infinity,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 332,
                child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(
                        builder: (context) {
                          return IconButton(
                            icon: const Icon(
                              Icons.close,
                            ),
                            padding: EdgeInsets.zero,
                            constraints:
                                const BoxConstraints(), // override default min size of 48px
                            style: const ButtonStyle(
                              tapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // the '2023' part
                            ),
                            iconSize: 32,
                            onPressed: () {
                              Scaffold.of(context).closeDrawer();
                            },
                          );
                          // return const Icon(
                          //   Icons.close,
                          // );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        onTap: () {},
                        title: Row(
                          children: [
                            Image.asset(
                              Assets.images.bintangBro,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Bintang Bro",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: colorBlack,
                                fontFamily: Assets.fonts.normsPro,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        onTap: () {},
                        title: Row(
                          children: [
                            Image.asset(
                              Assets.images.urbanDurian,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Urban Durian",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: colorBlack,
                                fontFamily: Assets.fonts.normsPro,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        onTap: () {},
                        title: Row(
                          children: [
                            Image.asset(
                              Assets.images.teguk,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Teguk",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: colorBlack,
                                fontFamily: Assets.fonts.normsPro,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        onTap: () {},
                        title: Row(
                          children: [
                            Image.asset(
                              Assets.icons.appIconSmallActive,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Catering",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: colorBlack,
                                fontFamily: Assets.fonts.normsPro,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Lacak Pesanan',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: colorBlack,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Pesanan Lalu',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: colorBlack,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Favorite Saya',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: colorBlack,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Buku Alamat',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: colorBlack,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: const Drawer(
        backgroundColor: colorWhite,
        width: double.infinity,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          ),
        ),
        // child: Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 27,
        //     vertical: 47,
        //   ),
        //   child: Stack(
        //     children: [
        //       Positioned.fill(
        //         child: Align(
        //           alignment: Alignment.topCenter,
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: [
        //               Text(
        //                 "0 point",
        //                 style: GoogleFonts.montserrat(
        //                   fontWeight: FontWeight.w800,
        //                   fontSize: 25,
        //                   color: colorBlack,
        //                 ),
        //               ),
        //               const SizedBox(
        //                 height: 18,
        //               ),
        //               Text(
        //                 "Points expire 12 months after you earn them\nThe maximum points limit is 500 points, if you do\npurchases that cause you to earn points exceed\nmaximum points limit then you will not get points",
        //                 style: GoogleFonts.montserrat(
        //                   fontWeight: FontWeight.w500,
        //                   fontSize: 10,
        //                   color: colorBlack,
        //                 ),
        //               ),
        //               const SizedBox(
        //                 height: 272,
        //               ),
        //               Text(
        //                 "Point history",
        //                 style: GoogleFonts.montserrat(
        //                   fontWeight: FontWeight.w800,
        //                   fontSize: 20,
        //                   color: colorBlack,
        //                 ),
        //                 textAlign: TextAlign.center,
        //               ),
        //               const SizedBox(
        //                 height: 6,
        //               ),
        //               Text(
        //                 "Earn points on all your purchases at\nLittle Indo Town",
        //                 style: GoogleFonts.montserrat(
        //                   fontWeight: FontWeight.w500,
        //                   fontSize: 10,
        //                   color: colorBlack,
        //                 ),
        //                 textAlign: TextAlign.center,
        //               ),
        //               const SizedBox(
        //                 height: 45,
        //               ),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //                   Image.asset(
        //                     Assets.images.bintangBro,
        //                     width: 84,
        //                   ),
        //                   Image.asset(
        //                     Assets.images.urbanDurian,
        //                     width: 65,
        //                   ),
        //                   Image.asset(
        //                     Assets.images.teguk,
        //                     width: 86,
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Positioned.fill(
        //         top: 80,
        //         child: Align(
        //           alignment: Alignment.topCenter,
        //           child: Image.asset(Assets.images.poin),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        child: YourPointPage(),
      ),
      appBar: AppBar(
        surfaceTintColor: colorTransparent,
        shadowColor: colorTransparent,
        scrolledUnderElevation: 0,
        backgroundColor: colorWhite,
        leading: Builder(
          builder: (context) {
            return IconButton(
              padding: EdgeInsets.zero,
              constraints:
                  const BoxConstraints(), // override default min size of 48px
              style: const ButtonStyle(
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // the '2023' part
              ),
              iconSize: 26,
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Builder(builder: (context) {
            return Column(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     PageRouteBuilder(
                      //       pageBuilder: (context, animation, secondaryAnimation) =>
                      //           const YourPointPage(),
                      //       transitionsBuilder:
                      //           (context, animation, secondaryAnimation, child) {
                      //         const begin = Offset(0.1, 0.0);
                      //         const end = Offset.zero;
                      //         const curve = Curves.fastOutSlowIn;

                      //         var tween = Tween(begin: begin, end: end).chain(
                      //           CurveTween(curve: curve),
                      //         );

                      //         return SlideTransition(
                      //           position: animation.drive(tween),
                      //           child: child,
                      //         );
                      //       },
                      //     ));
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.shopping_bag,
                          color: colorPrimary2,
                        ),
                        Text(
                          "0 point",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            color: colorBlack,
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          color: colorBlack,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(26),
              width: double.infinity,
              height: 208,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.icons.star),
                  fit: BoxFit.none,
                  alignment: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(12),
                color: colorPrimary,
                boxShadow: [
                  BoxShadow(
                    color: colorBlack.withOpacity(0.25),
                    offset: const Offset(1, 5),
                    blurRadius: 9.9,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.icons.appIconWhite,
                    width: 85,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Number",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: colorWhite,
                        ),
                      ),
                      Text(
                        "152 263 582",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: colorWhite,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Menu",
              style: GoogleFonts.montserrat(
                color: colorPrimary,
                fontWeight: FontWeight.w800,
                fontSize: 10,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    Assets.images.bintangBro,
                    width: 84,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    Assets.images.urbanDurian,
                    width: 65,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    Assets.images.teguk,
                    width: 86,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Catering",
                      style: GoogleFonts.montserrat(
                        color: colorPrimary,
                        fontWeight: FontWeight.w800,
                        fontSize: 10,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "See All",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800,
                              fontSize: 10,
                              color: colorBlack,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Icon(
                            Icons.chevron_right_rounded,
                            color: colorBlack,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 75,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                          children: [
                            Image.asset(
                              Assets.images.breakfast,
                            ),
                            Positioned.fill(
                              child: Container(
                                color: colorBlack.withOpacity(0.20),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Breakfast",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: colorWhite,
                                    fontFamily: Assets.fonts.elikaGorica,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 75,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                          children: [
                            Image.asset(
                              Assets.images.lunch,
                            ),
                            Positioned.fill(
                              child: Container(
                                color: colorBlack.withOpacity(0.20),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Lunch",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: colorWhite,
                                    fontFamily: Assets.fonts.elikaGorica,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 75,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                          children: [
                            Image.asset(
                              Assets.images.individualServer,
                            ),
                            Positioned.fill(
                              child: Container(
                                color: colorBlack.withOpacity(0.20),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Individual serve",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: colorWhite,
                                    fontFamily: Assets.fonts.elikaGorica,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Reward",
                      style: GoogleFonts.montserrat(
                        color: colorPrimary,
                        fontWeight: FontWeight.w800,
                        fontSize: 10,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "See All",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800,
                              fontSize: 10,
                              color: colorBlack,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Icon(
                            Icons.chevron_right_rounded,
                            color: colorBlack,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              color: colorBlack.withOpacity(0.25),
                            ),
                          ],
                          color: colorWhite,
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                Assets.images.crispyChicken,
                                width: 109.29,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: colorBlack,
                                  width: 1,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 14,
                                    color: colorPrimary2,
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    "10 Poin",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 8,
                                      color: colorPrimary2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Crispy Chicken",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: colorPrimary2,
                              ),
                            ),
                            Text(
                              "Burger",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 5,
                                color: colorDarkGray3,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              color: colorBlack.withOpacity(0.25),
                            ),
                          ],
                          color: colorWhite,
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                Assets.images.crispyChicken,
                                width: 109.29,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: colorBlack,
                                  width: 1,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 14,
                                    color: colorPrimary2,
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    "10 Poin",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 8,
                                      color: colorPrimary2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Crispy Chicken",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: colorPrimary2,
                              ),
                            ),
                            Text(
                              "Burger",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 5,
                                color: colorDarkGray3,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              color: colorBlack.withOpacity(0.25),
                            ),
                          ],
                          color: colorWhite,
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                Assets.images.crispyChicken,
                                width: 109.29,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: colorBlack,
                                  width: 1,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 14,
                                    color: colorPrimary2,
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    "10 Poin",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 8,
                                      color: colorPrimary2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Crispy Chicken",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: colorPrimary2,
                              ),
                            ),
                            Text(
                              "Burger",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 5,
                                color: colorDarkGray3,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            const HomeOff20Widget(),
          ],
        ),
      ),
    );
  }
}
