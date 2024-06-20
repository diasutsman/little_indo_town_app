import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class RegisterCheckEmailPage extends StatelessWidget {
  const RegisterCheckEmailPage({super.key});

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
                t.auth.register.check_email,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: colorPrimary,
                  fontFamily: Assets.fonts.elikaGorica,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                t.auth.register.check_email_info,
                style: TextStyle(
                  color: colorDarkGray,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: t.auth.register.check_email_6_digit_code,
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
                height: 84,
              ),
              Text(
                t.auth.register.didnt_get_the_code,
                style: TextStyle(
                  color: colorBlack,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                t.auth.register.resend_code,
                style: TextStyle(
                  color: colorPrimary,
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
