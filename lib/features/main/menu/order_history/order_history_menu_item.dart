import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/order_history/order_history_menu_item_order_item.dart';
import 'package:little_indo_town_app/features/main/menu/order_history/order_state_constants.dart';

class OrderHistoryMenuItem extends StatelessWidget {
  const OrderHistoryMenuItem({
    super.key,
    required this.onMenuItemTap,
    this.orderState = "Unknown",
  });

  final void Function() onMenuItemTap;
  final String orderState;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return OrderHistoryMenuItemOrderItem(onMenuItemTap: () {});
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Divider(
                  thickness: 1,
                  color: colorLightGray9,
                ),
              );
            },
            itemCount: 2,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                        color: colorLightGray10,
                        fontFamily: Assets.fonts.normsPro,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Icon(
                          OrderStateConstants.getIcon(orderState),
                          size: 16,
                          color: colorPrimary3,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          orderState,
                          style: TextStyle(
                            color: colorPrimary3,
                            fontFamily: Assets.fonts.normsPro,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Total order",
                      style: TextStyle(
                        color: colorBlack,
                        fontFamily: Assets.fonts.normsPro,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Text(
                      "\$16.5",
                      style: TextStyle(
                        color: colorPrimary3,
                        fontFamily: Assets.fonts.normsPro,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
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
        ],
      ),
    );
  }
}
