import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/profile/cubit/show_hide_password_cubit.dart';

class PasswordSecurityPage extends StatelessWidget {
  const PasswordSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowHidePasswordCubit showHidePasswordCubit = context.read();
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
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
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: colorBlack,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 41,
                      child: BlocBuilder<ShowHidePasswordCubit,
                          ShowHidePasswordState>(
                        builder: (context, state) {
                          return TextFormField(
                            cursorColor: colorPrimary,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: state.isPasswordHidden,
                            decoration: InputDecoration(
                              labelText: "Change Password",
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorPrimary,
                                ),
                              ),
                              focusColor: colorPrimary,
                              suffixIconColor: WidgetStateColor.resolveWith(
                                (states) {
                                  return states.contains(WidgetState.focused)
                                      ? colorPrimary
                                      : colorBlack;
                                },
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              floatingLabelStyle:
                                  WidgetStateTextStyle.resolveWith(
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
                                    color: color,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: Assets.fonts.normsPro,
                                  );
                                },
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  showHidePasswordCubit.togglePassword();
                                },
                                icon: Icon(
                                  state.isPasswordHidden
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 39,
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
