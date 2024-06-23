import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: colorTransparent,
        shadowColor: colorTransparent,
        backgroundColor: colorWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 32,
          icon: const Icon(Icons.chevron_left_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 87,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Image.asset(
                  Assets.icons.appIcon,
                  height: 64,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  "Account",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: colorBlack,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        Assets.images.profilePic,
                        width: 81,
                      ),
                      Positioned.fill(
                        right: -16,
                        bottom: -10,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            style: const ButtonStyle(
                              tapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // the '2023' part
                            ),
                            icon: const Icon(Icons.edit_square),
                            iconSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 41,
                      child: TextFormField(
                        cursorColor: colorPrimary,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Name",
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: colorPrimary,
                          )),
                          focusColor: colorPrimary,
                          suffixIconColor:
                              WidgetStateColor.resolveWith((states) {
                            return states.contains(WidgetState.focused)
                                ? colorPrimary
                                : colorBlack;
                          }),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          floatingLabelStyle: WidgetStateTextStyle.resolveWith(
                            (Set<WidgetState> states) {
                              final Color color =
                                  states.contains(WidgetState.focused)
                                      ? colorPrimary
                                      : colorBlack;
                              return TextStyle(
                                fontWeight: FontWeight.w500,
                                color: color,
                                fontSize: 14,
                                fontFamily: Assets.fonts.normsPro,
                              );
                            },
                          ),
                          labelStyle: WidgetStateTextStyle.resolveWith(
                            (Set<WidgetState> states) {
                              final Color color =
                                  states.contains(WidgetState.focused)
                                      ? colorPrimary
                                      : colorBlack;
                              return TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: color,
                                fontFamily: Assets.fonts.normsPro,
                              );
                            },
                          ),
                          suffixIcon: const Icon(Icons.edit_square),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 41,
                      child: TextFormField(
                        cursorColor: colorPrimary,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: colorPrimary,
                            ),
                          ),
                          focusColor: colorPrimary,
                          suffixIconColor:
                              WidgetStateColor.resolveWith((states) {
                            return states.contains(WidgetState.focused)
                                ? colorPrimary
                                : colorBlack;
                          }),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          floatingLabelStyle: WidgetStateTextStyle.resolveWith(
                            (Set<WidgetState> states) {
                              final Color color =
                                  states.contains(WidgetState.focused)
                                      ? colorPrimary
                                      : colorBlack;
                              return TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: color,
                                fontFamily: Assets.fonts.normsPro,
                              );
                            },
                          ),
                          labelStyle: WidgetStateTextStyle.resolveWith(
                            (Set<WidgetState> states) {
                              final Color color =
                                  states.contains(WidgetState.focused)
                                      ? colorPrimary
                                      : colorBlack;
                              return TextStyle(
                                fontWeight: FontWeight.w500,
                                color: color,
                                fontSize: 14,
                                fontFamily: Assets.fonts.normsPro,
                              );
                            },
                          ),
                          suffixIcon: const Icon(Icons.edit_square),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 41,
                      child: TextFormField(
                        cursorColor: colorPrimary,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: colorPrimary,
                            ),
                          ),
                          focusColor: colorPrimary,
                          suffixIconColor:
                              WidgetStateColor.resolveWith((states) {
                            return states.contains(WidgetState.focused)
                                ? colorPrimary
                                : colorBlack;
                          }),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          floatingLabelStyle: WidgetStateTextStyle.resolveWith(
                            (Set<WidgetState> states) {
                              final Color color =
                                  states.contains(WidgetState.focused)
                                      ? colorPrimary
                                      : colorBlack;
                              return TextStyle(
                                fontWeight: FontWeight.w500,
                                color: color,
                                fontSize: 14,
                                fontFamily: Assets.fonts.normsPro,
                              );
                            },
                          ),
                          labelStyle: WidgetStateTextStyle.resolveWith(
                            (Set<WidgetState> states) {
                              final Color color =
                                  states.contains(WidgetState.focused)
                                      ? colorPrimary
                                      : colorBlack;
                              return TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: color,
                                fontFamily: Assets.fonts.normsPro,
                              );
                            },
                          ),
                          suffixIcon: const Icon(Icons.edit_square),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 53,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 38,
                          vertical: 6,
                        ),
                        backgroundColor: colorPrimary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                      ),
                      child: Text(
                        "Save",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: colorWhite,
                          fontFamily: Assets.fonts.normsPro,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
