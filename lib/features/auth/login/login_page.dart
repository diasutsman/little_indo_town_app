import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/auth/components/auth_page_cubit.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthPageCubit authPageCubit = context.read();
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      t.auth.login.text,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: colorPrimary,
                        fontFamily: Assets.fonts.elikaGorica,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 82,
                  ),
                  Image.asset(
                    Assets.icons.appIcon,
                    width: 81,
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: t.auth.login.email,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        color: colorLightGray2,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        color: colorPrimary,
                        width: 1,
                      ),
                    ),
                    hintStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      color: colorLightGray3,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: t.auth.login.password,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        color: colorLightGray2,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        color: colorPrimary,
                        width: 1,
                      ),
                    ),
                    hintStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      color: colorLightGray3,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                        color: colorLightGray3,
                      ),
                    ),
                    suffixIconColor: WidgetStateColor.resolveWith(
                      (states) {
                        if (states.contains(WidgetState.focused)) {
                          return colorPrimary;
                        }
                        return colorLightGray3;
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                child: Text(
                  t.auth.login.forgot_password,
                  style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    t.auth.login.not_a_member,
                    style: TextStyle(
                      color: colorDarkGray,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: Assets.fonts.normsPro,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      authPageCubit.gotoPage(
                        AuthPageCubit.registerPersonalDataPageIndex,
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                    ),
                    child: Text(
                      t.auth.login.sign_up,
                      style: TextStyle(
                        color: colorPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
