import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class RegisterCreateAccountPage extends StatelessWidget {
  const RegisterCreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Assets.icons.appIcon,
                width: 47,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                t.auth.register.create_your_account,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: colorPrimary,
                  fontFamily: Assets.fonts.elikaGorica,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                t.auth.register.fiil_in,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: colorDarkGray,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: t.auth.register.email,
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
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: t.auth.register.enter_password,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        color: colorLightGray2,
                        width: 1,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                        color: colorLightGray3,
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
                height: 30,
              ),
              Text(
                t.auth.register.password_rules,
                style: TextStyle(
                  color: colorBlack,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                t.auth.register.required_info,
                style: TextStyle(
                  color: colorBlack,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
