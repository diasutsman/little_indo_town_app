import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_detail_arguments.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';

class BintangMenuDetailPage extends StatelessWidget {
  const BintangMenuDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as BintangMenuDetailArguments;

    final fromTab = args.fromTab;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        color: colorWhite2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    color: colorWhite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 20,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.chevron_left_rounded),
                                Text(
                                  "Kembali ke ${fromTab.text}",
                                  style: TextStyle(
                                    color: colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: Assets.fonts.normsPro,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: colorWhite,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Image.asset(
                    Assets.images.bintangBroMenuDetail,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.images.choiceRasa,
                          height: 32,
                        ),
                        Text(
                          "Crispy Chicken Burger",
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            fontFamily: Assets.fonts.normsPro,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              color: colorWhite,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Original",
                      style: TextStyle(
                        color: colorBlack,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "\$16.5",
                      style: TextStyle(
                        color: colorPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          backgroundColor: colorPrimary4,
                          highlightColor: colorWhite.withOpacity(0.5),
                        ),
                        iconSize: 25,
                        icon: const Icon(
                          Icons.remove,
                          color: colorWhite,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SizedBox(
                        width: 50,
                        height: 25,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.number,
                          initialValue: '0',
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontFamily: Assets.fonts.normsPro,
                          ),
                          cursorHeight: 20,
                          cursorColor: colorPrimary,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: colorBlack,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: colorPrimary,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 25,
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          backgroundColor: colorPrimary4,
                          highlightColor: colorWhite.withOpacity(0.5),
                        ),
                        icon: const Icon(
                          Icons.add,
                          color: colorWhite,
                          size: 25,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: colorWhite,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Spicy",
                      style: TextStyle(
                        color: colorBlack,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "\$16.5",
                      style: TextStyle(
                        color: colorPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          backgroundColor: colorPrimary4,
                          highlightColor: colorWhite.withOpacity(0.5),
                        ),
                        iconSize: 25,
                        icon: const Icon(
                          Icons.remove,
                          color: colorWhite,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SizedBox(
                        width: 50,
                        height: 25,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.number,
                          initialValue: '0',
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontFamily: Assets.fonts.normsPro,
                          ),
                          cursorHeight: 20,
                          cursorColor: colorPrimary,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: colorBlack,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: colorPrimary,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 25,
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          backgroundColor: colorPrimary4,
                          highlightColor: colorWhite.withOpacity(0.5),
                        ),
                        icon: const Icon(
                          Icons.add,
                          color: colorWhite,
                          size: 25,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: colorWhite,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Extra Cheese",
                      style: TextStyle(
                        color: colorBlack,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "\$1.5",
                      style: TextStyle(
                        color: colorPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          backgroundColor: colorPrimary4,
                          highlightColor: colorWhite.withOpacity(0.5),
                        ),
                        iconSize: 25,
                        icon: const Icon(
                          Icons.remove,
                          color: colorWhite,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SizedBox(
                        width: 50,
                        height: 25,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.number,
                          initialValue: '0',
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontFamily: Assets.fonts.normsPro,
                          ),
                          cursorHeight: 20,
                          cursorColor: colorPrimary,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: colorBlack,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: colorPrimary,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 25,
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          backgroundColor: colorPrimary4,
                          highlightColor: colorWhite.withOpacity(0.5),
                        ),
                        icon: const Icon(
                          Icons.add,
                          color: colorWhite,
                          size: 25,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          MenuRoutes.bintangBroMenuCheckoutRoute,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorSecondary,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        textStyle: TextStyle(
                          color: colorOnSecondary,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          fontFamily: Assets.fonts.normsPro,
                        ),
                      ),
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(
                          color: colorOnSecondary,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
