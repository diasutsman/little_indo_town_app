import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/components/app_logged_in_cubit.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/configs/routes.dart';
import 'package:little_indo_town_app/features/auth/components/auth_page_cubit.dart';
import 'package:little_indo_town_app/features/auth/welcome/auth_welcome_page.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthPageCubit authPageCubit = context.read();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 95),
              child: BlocBuilder<AuthPageCubit, int>(
                builder: (context, page) {
                  return PopScope(
                    canPop: authPageCubit.stackPages.isEmpty,
                    onPopInvoked: authPageCubit.handleAuthPagesPop,
                    child: PageView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: authPageCubit.pageController,
                      onPageChanged: authPageCubit.onPageChanged,
                      itemCount: authPageCubit.pageCount,
                      itemBuilder: authPageCubit.pageBuilder,
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 83,
            child: BlocBuilder<AuthPageCubit, int>(
              builder: (context, state) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _getButtons(
                    currentPage: state,
                    authPageCubit: authPageCubit,
                    context: context,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getButtons({
    required int currentPage,
    required AuthPageCubit authPageCubit,
    required BuildContext context,
  }) {
    switch (currentPage) {
      case AuthPageCubit.authWelcomePageIndex:
        return [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorSecondary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                overlayColor: colorPrimary,
              ),
              onPressed: () {
                authPageCubit.gotoPage(AuthPageCubit.loginPageIndex);
              },
              child: Text(
                t.auth.login.login,
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: Assets.fonts.normsPro,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorPrimary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                overlayColor: colorSecondary,
              ),
              onPressed: () {
                authPageCubit.gotoPage(
                  AuthPageCubit.registerPersonalDataPageIndex,
                );
              },
              child: Text(
                t.auth.register.signup,
                style: TextStyle(
                  color: colorWhite,
                  fontFamily: Assets.fonts.normsPro,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ];

      case AuthPageCubit.loginPageIndex:
        return [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorSecondary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                overlayColor: colorPrimary,
              ),
              onPressed: () {
                _navigateToHome(context: context);
              },
              child: Text(
                t.auth.login.login,
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: Assets.fonts.normsPro,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ];
      case AuthPageCubit.registerPersonalDataPageIndex:
        return [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorSecondary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                overlayColor: colorSecondary,
              ),
              onPressed: () {
                authPageCubit.gotoPage(
                  AuthPageCubit.registerCreateAccountPageIndex,
                );
              },
              child: Text(
                t.auth.register.next,
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: Assets.fonts.normsPro,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ];
      case AuthPageCubit.registerCreateAccountPageIndex:
        return [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorSecondary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                overlayColor: colorSecondary,
              ),
              onPressed: () {
                authPageCubit.gotoPage(
                  AuthPageCubit.registerCheckEmailPageIndex,
                );
              },
              child: Text(
                t.auth.register.create_an_account,
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: Assets.fonts.normsPro,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ];
      case AuthPageCubit.registerCheckEmailPageIndex:
        return [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorSecondary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                overlayColor: colorSecondary,
              ),
              onPressed: () {
                authPageCubit.gotoPage(
                  AuthPageCubit.registerWelcomePageIndex,
                );
              },
              child: Text(
                t.auth.register.send,
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: Assets.fonts.normsPro,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ];
      case AuthPageCubit.registerWelcomePageIndex:
        return [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorSecondary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                overlayColor: colorSecondary,
              ),
              onPressed: () {
                _navigateToHome(context: context);
              },
              child: Text(
                t.auth.register.done,
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: Assets.fonts.normsPro,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ];
      default:
        return [];
    }
  }

  void _navigateToHome({required BuildContext context}) {
    context.read<AppLoggedInCubit>().login();
    Navigator.pushNamedAndRemoveUntil(
      context,
      Routes.home,
      (route) {
        return false;
      },
    );
  }
}
