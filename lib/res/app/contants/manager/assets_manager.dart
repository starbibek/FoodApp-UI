// AssetsManager is a singleton class that is used to manage all the assets of the application. It is used to get the path of the assets.
import 'package:food_ordering/res/app/contants/constants.dart';
import 'package:logger/logger.dart';

AssetsManager assetsManager = AssetsManager.instance;

class AssetsManager {
  // final String _assetsPath = 'assets';
  // final String _imagesPath = 'assets/images';
  final String _svgPath = 'assets/svg';
  final String _onboardingSvg = 'assets/svg/onboarding';

  AssetsManager._();
  static AssetsManager instance = AssetsManager._();

  void init() {
    logger.log(Level.wtf, 'AssetsManager initialized');
  }

  String get forbesLogo => "$_svgPath/forbes_kitchen_logo.svg";
  String get loginUpperView => "$_svgPath/login_upper_view.svg";
  String get splashScreenBg => "$_svgPath/splash_screen_bg.svg";
  // SVGs for onboarding
  String get foodULoveSvg => "$_onboardingSvg/food_you_love_svg.svg";
  String get liveTrackingSvg => "$_onboardingSvg/live_tracking_svg.svg";
  String get deliverySvg => "$_onboardingSvg/delivery_svg.svg";
}
