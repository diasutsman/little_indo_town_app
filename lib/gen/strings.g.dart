/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 52
///
/// Built on 2024-06-20 at 08:19 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsOnboardingEn onboarding = _StringsOnboardingEn._(_root);
	late final _StringsHomeEn home = _StringsHomeEn._(_root);
	late final _StringsMainMenuEn main_menu = _StringsMainMenuEn._(_root);
	late final _StringsAuthEn auth = _StringsAuthEn._(_root);
}

// Path: onboarding
class _StringsOnboardingEn {
	_StringsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hi => 'HI,';
	String get welcome => 'Welcome to the app Little Indo Town';
	String get slogan => 'Food Drink & Dessert in One Stop';
	String get location => 'Activate Your Location';
	String get location_promo => 'Get promos at Little Indo Town by allowing us to access your location';
	String get notification => 'Always update promotions Little Indo Town';
	String get notification_description => 'Get notifications every time there is a promotion Little Indo Town to your cellphone';
	String get next => 'Next';
}

// Path: home
class _StringsHomeEn {
	_StringsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get menu => 'Menu';
	String get login_to_claim => 'Log In to claim';
	String get special_promo => 'Special Promo';
	String get login_to_be_member => 'Log in and become a member to order';
	String get login => 'Login';
	String get hot_deals => 'HOT DEALS';
	String get off => 'OFF';
	String get perc20 => '20%';
	String get order => 'Order';
}

// Path: main_menu
class _StringsMainMenuEn {
	_StringsMainMenuEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get menu => 'Menu';
	String get order => 'Order';
	String get restaurant => 'Restaurant';
	String get profile => 'Profile';
}

// Path: auth
class _StringsAuthEn {
	_StringsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcome => 'WELCOME';
	String get info => 'Become a member to order and pay in the app, receive great offers, and collect points for your purchases.';
	late final _StringsAuthLoginEn login = _StringsAuthLoginEn._(_root);
	late final _StringsAuthRegisterEn register = _StringsAuthRegisterEn._(_root);
}

// Path: auth.login
class _StringsAuthLoginEn {
	_StringsAuthLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get login => 'LOGIN';
	String get email => 'Email';
	String get password => 'Password';
	String get forgot_password => 'Forgot password ?';
	String get not_a_member => 'Not a member yet?';
	String get sign_up => 'SIGN UP';
	String get text => 'Entered into things that interesting';
}

// Path: auth.register
class _StringsAuthRegisterEn {
	_StringsAuthRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signup => 'SIGNUP';
	String get next => 'NEXT';
	String get create_an_account => 'CREATE AN ACCOUNT';
	String get create_your_account => 'Create your account';
	String get password_rules => 'Include one number\nInclude upper and lower case characters\nPassword must be at least 8 characters';
	String get send => 'SEND';
	String get done => 'DONE';
	String get email => '*Email';
	String get enter_password => 'Enter password';
	String get personal_data => 'Personal data';
	String get fiil_in => 'Please fill in your login.';
	String get required_info => '*required information';
	String get first_name => '*First name';
	String get last_name => '*Last name';
	String get check_email => 'Check your email';
	String get check_email_info => 'We have sent an email to albert@gmail.com\nwith a 6 digit code. this takes some time \nminutes to receive. Please enter the code below\nhere or tap the link in the email';
	String get check_email_6_digit_code => '6 digit code';
	String get didnt_get_the_code => 'Didn\'t get the code?';
	String get resend_code => 'Resend code';
	String get welcome_to_the_club => 'Welcome to the club!';
	String get welcome_congratulation => 'Congratulations on registering. Take a look at some \nproducts to know its delicious taste!';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onboarding.hi': return 'HI,';
			case 'onboarding.welcome': return 'Welcome to the app Little Indo Town';
			case 'onboarding.slogan': return 'Food Drink & Dessert in One Stop';
			case 'onboarding.location': return 'Activate Your Location';
			case 'onboarding.location_promo': return 'Get promos at Little Indo Town by allowing us to access your location';
			case 'onboarding.notification': return 'Always update promotions Little Indo Town';
			case 'onboarding.notification_description': return 'Get notifications every time there is a promotion Little Indo Town to your cellphone';
			case 'onboarding.next': return 'Next';
			case 'home.menu': return 'Menu';
			case 'home.login_to_claim': return 'Log In to claim';
			case 'home.special_promo': return 'Special Promo';
			case 'home.login_to_be_member': return 'Log in and become a member to order';
			case 'home.login': return 'Login';
			case 'home.hot_deals': return 'HOT DEALS';
			case 'home.off': return 'OFF';
			case 'home.perc20': return '20%';
			case 'home.order': return 'Order';
			case 'main_menu.home': return 'Home';
			case 'main_menu.menu': return 'Menu';
			case 'main_menu.order': return 'Order';
			case 'main_menu.restaurant': return 'Restaurant';
			case 'main_menu.profile': return 'Profile';
			case 'auth.welcome': return 'WELCOME';
			case 'auth.info': return 'Become a member to order and pay in the app, receive great offers, and collect points for your purchases.';
			case 'auth.login.login': return 'LOGIN';
			case 'auth.login.email': return 'Email';
			case 'auth.login.password': return 'Password';
			case 'auth.login.forgot_password': return 'Forgot password ?';
			case 'auth.login.not_a_member': return 'Not a member yet?';
			case 'auth.login.sign_up': return 'SIGN UP';
			case 'auth.login.text': return 'Entered into things that interesting';
			case 'auth.register.signup': return 'SIGNUP';
			case 'auth.register.next': return 'NEXT';
			case 'auth.register.create_an_account': return 'CREATE AN ACCOUNT';
			case 'auth.register.create_your_account': return 'Create your account';
			case 'auth.register.password_rules': return 'Include one number\nInclude upper and lower case characters\nPassword must be at least 8 characters';
			case 'auth.register.send': return 'SEND';
			case 'auth.register.done': return 'DONE';
			case 'auth.register.email': return '*Email';
			case 'auth.register.enter_password': return 'Enter password';
			case 'auth.register.personal_data': return 'Personal data';
			case 'auth.register.fiil_in': return 'Please fill in your login.';
			case 'auth.register.required_info': return '*required information';
			case 'auth.register.first_name': return '*First name';
			case 'auth.register.last_name': return '*Last name';
			case 'auth.register.check_email': return 'Check your email';
			case 'auth.register.check_email_info': return 'We have sent an email to albert@gmail.com\nwith a 6 digit code. this takes some time \nminutes to receive. Please enter the code below\nhere or tap the link in the email';
			case 'auth.register.check_email_6_digit_code': return '6 digit code';
			case 'auth.register.didnt_get_the_code': return 'Didn\'t get the code?';
			case 'auth.register.resend_code': return 'Resend code';
			case 'auth.register.welcome_to_the_club': return 'Welcome to the club!';
			case 'auth.register.welcome_congratulation': return 'Congratulations on registering. Take a look at some \nproducts to know its delicious taste!';
			default: return null;
		}
	}
}
