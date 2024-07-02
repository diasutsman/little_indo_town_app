import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/order_history/order_history_menu_item_order_item.dart';
import 'package:little_indo_town_app/features/main/menu/order_history/order_state_constants.dart';
import 'package:little_indo_town_app/features/main/menu/point_history/point_history_menu_item_order_item.dart';
import 'package:material_symbols_icons/symbols.dart';

class PointHistoryMenuItem extends StatelessWidget {
  const PointHistoryMenuItem({
    super.key,
    required this.onMenuItemTap,
    this.pointState = "Unknown",
    required this.month,
  });

  final void Function() onMenuItemTap;
  final String pointState;
  final String month;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            bottom: 8,
          ),
          child: Text(
            month.toUpperCase(),
            style: GoogleFonts.montserrat(
              color: colorBlack,
              fontWeight: FontWeight.w800,
              fontSize: 15,
            ),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return PointHistoryMenuItemPointItem(onMenuItemTap: () {});
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 12,
            );
          },
          itemCount: 5,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
