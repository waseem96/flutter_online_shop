import 'package:flutter/widgets.dart';
import 'package:flutter_online_shop/components/categories_card.dart';
import 'package:flutter_online_shop/screens/cart/cart_screen.dart';
import 'package:flutter_online_shop/screens/categories_list/iphone_batteries/iphone_batteries_home.dart';
import 'package:flutter_online_shop/screens/categories_list/iphone_covers/iphone_covers_home.dart';
import 'package:flutter_online_shop/screens/categories_list/iphone_screens/iphone_screens_home.dart';
import 'package:flutter_online_shop/screens/categories_list/macbook_chargers/macbook_chargers_home.dart';
import 'package:flutter_online_shop/screens/categories_list/screen_protection/screen_protection_home.dart';
import 'package:flutter_online_shop/screens/categories_list/tools_and_equipment/tools_and_equipment_home.dart';
import 'package:flutter_online_shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_online_shop/screens/details/details_screen.dart';
import 'package:flutter_online_shop/screens/details_list/details_screen.dart';
import 'package:flutter_online_shop/screens/forgot_password/forgot_passwrod_screen.dart';
import 'package:flutter_online_shop/screens/home1/home_screen.dart';
import 'package:flutter_online_shop/screens/log_in_success/log_in_sucess_screen.dart';
import 'package:flutter_online_shop/screens/otp/otp_screen.dart';
import 'package:flutter_online_shop/screens/profile/profile_screen.dart';
import 'package:flutter_online_shop/screens/see_more/special_offer_see_more.dart';
import 'package:flutter_online_shop/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_online_shop/screens/splash_screen/splash_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SeeMoreSpecialOffer.routeName: (context) => SeeMoreSpecialOffer(),
  CategoriesCard.routeName: (context) => CategoriesCard(),
  IPhoneBatteriesHome.routeName: (context) => IPhoneBatteriesHome(),
  IPhoneCoversHome.routeName: (context) => IPhoneCoversHome(),
  IPhoneScreensHome.routeName: (context) => IPhoneScreensHome(),
  MacbookChargers.routeName: (context) => MacbookChargers(),
  ScreenProtection.routeName: (context) => ScreenProtection(),
  ToolsAndEquipment.routeName: (context) => ToolsAndEquipment(),
  DetailsListScreen.routeName: (context) => DetailsListScreen(),
};
