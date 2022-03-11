import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_icons/flutter_icons.dart';

import 'core/size_config.dart';

class WhatsAppConstants {
  static const String title = 'WhatsApp';
  Widget buildFunctionalityNotAvailablePanel(BuildContext context) => SizedBox(
    height: kSpacingX320,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Entypo.progress_empty,
          size: getProportionateScreenHeight(kSpacingX96),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        SizedBox(height: getProportionateScreenHeight(kSpacingX24)),
        Text(
          "Functionality currently not available",
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: getProportionateScreenHeight(kSpacingX8)),
        Text(
          "Grab a beverage and check back later!",
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: Theme.of(context).disabledColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );

  Future getMapStyle({bool isLightTheme = false}) async =>
      await rootBundle.loadString(
          isLightTheme ? "assets/map_style.json" : "assets/dark_map_style.json");

  /// Dimensions
  static const double kSpacingNone = 0.0;
  static const double kSpacingX2 = 2.0;
  static const double kSpacingX4 = 4.0;
  static const double kSpacingX8 = 8.0;
  static const double kSpacingX12 = 12.0;
  static const double kSpacingX16 = 16.0;
  static const double kSpacingX20 = 20.0;
  static const double kSpacingX24 = 24.0;
  static const double kSpacingX36 = 36.0;
  static const double kSpacingX42 = 42.0;
  static const double kSpacingX48 = 48.0;
  static const double kSpacingX56 = 56.0;
  static const double kSpacingX64 = 64.0;
  static const double kSpacingX72 = 72.0;
  static const double kSpacingX84 = 84.0;
  static const double kSpacingX96 = 96.0;
  static const double kSpacingX100 = 100.0;
  static const double kSpacingX120 = 120.0;
  static const double kSpacingX160 = 160.0;
  static const double kSpacingX200 = 200.0;
  static const double kSpacingX230 = 230.0;
  static const double kSpacingX250 = 250.0;
  static const double kSpacingX300 = 300.0;
  static const double kSpacingX320 = 320.0;
  static const double kSpacingX360 = 360.0;
  static const double kOpacityX14 = 0.14;
  static const double kOpacityX35 = 0.35;
  static const double kOpacityX50 = 0.5;
  static const double kOpacityX70 = 0.7;
  static const double kOpacityX90 = 0.9;
  static const double kEmphasisLow = 0.38;
  static const double kEmphasisMedium = 0.67;
  static const double kEmphasisHigh = 0.9;

  /// App
  static const kAppName = "Popina";
  static const kAppNameShort = "Popina";
  static const kAppSlogan =
      "Find the best restaurants with competitive price & ratings around you";
  static const kAppVersion = "v0.0.1";
  static const kArtisanReviewHelpDialogContent =
      "Sensitive data (like email addresses, phone numbers, user ids etc) will not be made public to customers on this platform.\nYour ratings are also based on the accumulated reviews by customers you have served over the last 6 months";
  static const kPasswordHint =
      "Your password must be 8 or more characters long & must container a mix of upper & lower case letters, numbers & symbols";
  static const kSignOutText =
      "Signing out will set you offline until you sign in again. You may not be able to send/receive requests. Do you wish to continue?";
  static const kStaffString = "Staff";
  static const kFunctionalityUnavailable =
      "Functionality currently not available. Grab a beverage and check back later!";
  static const kMemberString = "Member";
  static const kLogoAsset = "assets/images/banner.webp";
  static const kLogoDarkAsset = "assets/images/banner.webp";

  /// Image source => https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80
  static const kSplashBackgroundAsset = "assets/images/splash.webp";

  /// Image credit => https://unsplash.com/photos/fdlZBWIP0aM
  static const kExploreSvgAsset = "assets/images/map.webp";

  /// Image credit => https://www.freepik.com/vectors/food
  static const kFoodSvgAsset = "assets/images/food.webp";

  /// Image credit => https://unsplash.com/photos/Orz90t6o0e4
  static const kEnjoySvgAsset = "assets/images/enjoy.webp";

  static const kNotificationAsset = "assets/svgs/notifications.svg";
  static const kLocationAsset = "assets/svgs/location.svg";
  static const kLoremText =
      "Ipsum suspendisse ultrices gravida dictum fusce ut placerat. Cursus sit amet dictum sit amet. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique";

  static const kNotificationHelperText =
      "To receive updates on new restaurants around you, allow the app to send you notifications.\n\nBy default, sensitive information such as appointment, email addresses and phone numbers will be hidden from notifications while the device is locked.\n\nYou will have the option to change these privacy settings at anytime";
  static const kLocationHelperText =
      "Allow the app to detect your live location.\n\nYour live location will be hidden from notifications while the device is locked.\n\nYou will have the option to change these privacy settings at anytime";

  /// Durations
  static const kScaleDuration = Duration(milliseconds: 350);
  static const kSheetDuration = Duration(milliseconds: 850);
  static const kTestDuration = Duration(milliseconds: 1500);

  /// Others
  static const kScrollPhysics = BouncingScrollPhysics();
  static const kSlideOffset = 50.0;

  /// Colors
  static const kGreenColor = Color(0xFF009688);
  static const kWhiteColor = Colors.white;
  static const kBlackColor = Color(0xFF040505);
  static const kAmberColor = Colors.amber;
  static const kChatBackgroundLight = Color(0xFFF5F5F5);
  static const kChatBackgroundDark = Color(0xFF222222);
  static const kTransparent = Colors.transparent;
  static const kPlaceholderColor = Color(0x70000000);
  static const kDisabledColor = Color(0xFFD8D8D8);
  static const kFieldColor = Color(0xFFe0e0e0);

  static const kPrimaryColor = Color(0xFF1e2a78);
  static const kSecondaryLightColor = Color(0xFF1e2a78);
  static const kErrorLightColor = Color(0xffE91E63);
  static const kAccentLightColor = kSecondaryLightColor;
  static const kBackgroundLightColor = kWhiteColor;
  static const kCardLightColor = kFieldColor;

// 123456789ABCDEF -> < 16
  static const kPrimaryColorDark = Color(0xFF28c7fa);
  static const kSecondaryDarkColor = Color(0xFF28c7fa);
  static const kErrorDarkColor = Color(0xffEC407A);
  static const kAccentDarkColor = kWhiteColor;
  static const kBackgroundDarkColor = Color(0xFF151515);
  static const kCardDarkColor = Color(0xFF272727);
  static const kSurfaceDarkColor = Color(0xFF222225);

  /// Icon Colors
  static const kAccentIconLightColor = kPrimaryColor;
  static const kPrimaryIconLightColor = kPrimaryColor;

  static const kAccentIconDarkColor = kWhiteColor;
  static const kPrimaryIconDarkColor = kWhiteColor;

  /// Text Colors
  static const kBodyTextColorLight = Color(0xFF232323);
  static const kTitleTextColorLight = Color(0xFF131313);
  static const kUnselectedLabelColorLight = Color(0xFF7C7C7C);

  static const kBodyTextColorDark = Color(0xFFDEDEDE);
  static const kUnselectedLabelColorDark = Color(0xFFDEDEDE);
  static const kTitleTextColorDark = Color(0xFFDEDEDE);

  static const kShadowColor = Color(0xFFDEDEDE);
  static const kShadowDarkColor = Color(0xFF7C7C7C);

}