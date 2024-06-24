import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/features/auth/login/cubit/login_toggle_password_cubit.dart';
import 'package:little_indo_town_app/features/auth/login/login_page.dart';
import 'package:little_indo_town_app/features/auth/register/cubit/register_toggle_password_cubit.dart';
import 'package:little_indo_town_app/features/auth/register/register_check_verification_page.dart';
import 'package:little_indo_town_app/features/auth/register/register_create_account_page.dart';
import 'package:little_indo_town_app/features/auth/register/register_personal_data_page.dart';
import 'package:little_indo_town_app/features/auth/register/register_welcome_page.dart';
import 'package:little_indo_town_app/features/auth/welcome/auth_welcome_page.dart';

class AuthPageCubit extends Cubit<int> {
  AuthPageCubit() : super(0);

  static const int authWelcomePageIndex = 0;
  static const int loginPageIndex = 1;
  static const int registerPersonalDataPageIndex = 2;
  static const int registerCreateAccountPageIndex = 3;
  static const int registerCheckEmailPageIndex = 4;
  static const int registerWelcomePageIndex = 5;

  static final List<Widget> _pages = [
    const AuthWelcomePage(),
    BlocProvider(
      create: (context) => LoginTogglePasswordCubit(),
      child: const LoginPage(),
    ),
    const RegisterPersonalDataPage(),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterTogglePasswordCubit(),
        ),
      ],
      child: const RegisterCreateAccountPage(),
    ),
    const RegisterCheckVerificationPage(),
    const RegisterWelcomePage(),
  ];

  final PageController pageController = PageController();
  set page(int page) {
    emit(page);
  }

  int get page => state;
  int get pageCount => _pages.length;

  final List<int> _stackPages = [];
  List<int> get stackPages => [..._stackPages];

  void handleAuthPagesPop(bool didPop) {
    if (didPop) {
      return;
    }
    pageController.animateToPage(
      _stackPages.removeLast(),
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 800),
    );
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void onPageChanged(int index) {
    page = index;
  }

  Widget? pageBuilder(BuildContext context, int index) {
    return _pages[index];
  }

  void gotoPage(int index) {
    FocusManager.instance.primaryFocus?.unfocus();
    if (0 > index || index >= _pages.length) {
      throw Exception("Invalid page index");
    }

    _stackPages.add(page);

    pageController.animateToPage(
      index,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 800),
    );
  }
}
