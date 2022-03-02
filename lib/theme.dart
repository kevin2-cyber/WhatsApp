import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './constants.dart' as constants;

class WhatsAppTheme {
  // Fonts
  static final _kTitleFontFamily = GoogleFonts
      .montserrat()
      .fontFamily;
  final _kBodyFontFamily = GoogleFonts
      .rubik()
      .fontFamily;

  /// Light theme
  ThemeData themeData(BuildContext context) =>
      ThemeData(
        platform: TargetPlatform.iOS,
        selectedRowColor: constants.WhatsAppConstants.kSecondaryLightColor,
        appBarTheme: appBarTheme,
        disabledColor: constants.WhatsAppConstants.kDisabledColor,
        errorColor: constants.WhatsAppConstants.kErrorLightColor,
        toggleableActiveColor: constants.WhatsAppConstants.kPrimaryColor,
        dividerTheme: DividerThemeData(
          thickness: constants.WhatsAppConstants.kSpacingNone,
          color: constants.WhatsAppConstants.kDisabledColor.withOpacity(constants.WhatsAppConstants.kOpacityX70),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(constants.WhatsAppConstants.kSpacingX16),
          ),
          backgroundColor: constants.WhatsAppConstants.kSecondaryLightColor,
        ),
        inputDecorationTheme:
        const InputDecorationTheme(border: UnderlineInputBorder()),
        tabBarTheme: const TabBarTheme(
          labelColor: constants.WhatsAppConstants.kPrimaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: constants.WhatsAppConstants.kUnselectedLabelColorLight,
        ),
        primaryColor: constants.WhatsAppConstants.kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: constants.WhatsAppConstants.kBackgroundLightColor,
        cardColor: constants.WhatsAppConstants.kCardLightColor,
        backgroundColor: /*Colors.white*/ constants.WhatsAppConstants.kBackgroundLightColor,
        iconTheme: const IconThemeData(color: constants.WhatsAppConstants.kPrimaryIconLightColor),
        primaryIconTheme: const IconThemeData(color: constants.WhatsAppConstants.kPrimaryIconLightColor),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: _kTitleFontFamily,
              color: constants.WhatsAppConstants.kTitleTextColorLight,
              fontWeight: FontWeight.w600),
          headline2: TextStyle(
              fontFamily: _kTitleFontFamily,
              color: constants.WhatsAppConstants.kTitleTextColorLight,
              fontWeight: FontWeight.w600),
          headline3: TextStyle(
              fontFamily: _kTitleFontFamily,
              color: constants.WhatsAppConstants.kTitleTextColorLight,
              fontWeight: FontWeight.w600),
          headline4: TextStyle(
              fontFamily: _kTitleFontFamily,
              color: constants.WhatsAppConstants.kTitleTextColorLight,
              fontWeight: FontWeight.w600),
          headline5: TextStyle(
              color: constants.WhatsAppConstants.kTitleTextColorLight,
              fontFamily: _kBodyFontFamily,
              fontWeight: FontWeight.w600),
          headline6: TextStyle(
              color: constants.WhatsAppConstants.kTitleTextColorLight,
              fontFamily: _kBodyFontFamily,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          bodyText1:
          TextStyle(color: constants.WhatsAppConstants.kBodyTextColorLight, fontFamily: _kBodyFontFamily),
          bodyText2: TextStyle(
              color: constants.WhatsAppConstants.kBodyTextColorLight.withOpacity(constants.WhatsAppConstants.kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          subtitle1:
          TextStyle(color: constants.WhatsAppConstants.kBodyTextColorLight, fontFamily: _kBodyFontFamily),
          subtitle2: TextStyle(
              color: constants.WhatsAppConstants.kBodyTextColorLight.withOpacity(constants.WhatsAppConstants.kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          overline:
          TextStyle(color: constants.WhatsAppConstants.kBodyTextColorLight, fontFamily: _kBodyFontFamily),
          caption: TextStyle(
              color: constants.WhatsAppConstants.kBodyTextColorLight.withOpacity(constants.WhatsAppConstants.kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          button: TextStyle(
              color: constants.WhatsAppConstants.kBodyTextColorDark,
              fontFamily: _kBodyFontFamily,
              fontWeight: FontWeight.w600),
        ), colorScheme: const ColorScheme.light(
          secondary: constants.WhatsAppConstants.kSecondaryLightColor,
          onSecondary: constants.WhatsAppConstants.kWhiteColor,
          surface: constants.WhatsAppConstants.kWhiteColor,
          primary: constants.WhatsAppConstants.kPrimaryColor,
          background: constants.WhatsAppConstants.kBlackColor,
        ).copyWith(secondary: constants.WhatsAppConstants.kAccentLightColor),
      );

  /// Dark theme
  ThemeData darkThemeData(BuildContext context) =>
      ThemeData.dark().copyWith(
        platform: TargetPlatform.iOS,
        selectedRowColor: constants.WhatsAppConstants.kSecondaryDarkColor,
        errorColor: constants.WhatsAppConstants.kErrorDarkColor,
        appBarTheme: appBarTheme,
        disabledColor: constants.WhatsAppConstants.kCardDarkColor,
        toggleableActiveColor: constants.WhatsAppConstants.kSecondaryDarkColor,
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: constants.WhatsAppConstants.kDisabledColor.withOpacity(constants.WhatsAppConstants.kOpacityX70),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(constants.WhatsAppConstants.kSpacingX16),
          ),
          backgroundColor: constants.WhatsAppConstants.kPrimaryColorDark,
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: constants.WhatsAppConstants.kPrimaryColorDark,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: constants.WhatsAppConstants.kUnselectedLabelColorDark,
        ),
        inputDecorationTheme:
        const InputDecorationTheme(border: UnderlineInputBorder()),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: constants.WhatsAppConstants.kPrimaryColorDark,
        scaffoldBackgroundColor: constants.WhatsAppConstants.kBackgroundDarkColor,
        backgroundColor: constants.WhatsAppConstants.kBackgroundDarkColor,
        iconTheme: const IconThemeData(color: constants.WhatsAppConstants.kPrimaryIconDarkColor),
        primaryIconTheme: const IconThemeData(color: constants.WhatsAppConstants.kPrimaryIconDarkColor),
        cardColor: constants.WhatsAppConstants.kCardDarkColor,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: constants.WhatsAppConstants.kTitleTextColorDark,
              fontWeight: FontWeight.w600,
              fontFamily: _kTitleFontFamily),
          headline2: TextStyle(
              color: constants.WhatsAppConstants.kTitleTextColorDark,
              fontWeight: FontWeight.w600,
              fontFamily: _kTitleFontFamily),
          headline3: TextStyle(
              color: constants.WhatsAppConstants.kTitleTextColorDark,
              fontWeight: FontWeight.w600,
              fontFamily: _kTitleFontFamily),
          headline4: TextStyle(
              color: constants.WhatsAppConstants.kTitleTextColorDark,
              fontFamily: _kTitleFontFamily,
              fontWeight: FontWeight.w600),
          headline5: TextStyle(
              color: constants.WhatsAppConstants.kTitleTextColorDark,
              fontFamily: _kBodyFontFamily,
              fontWeight: FontWeight.w600),
          headline6: TextStyle(
              color: constants.WhatsAppConstants.kTitleTextColorDark,
              fontFamily: _kBodyFontFamily,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          bodyText1:
          TextStyle(color: constants.WhatsAppConstants.kBodyTextColorDark, fontFamily: _kBodyFontFamily),
          bodyText2: TextStyle(
              color: constants.WhatsAppConstants.kBodyTextColorDark.withOpacity(constants.WhatsAppConstants.kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          subtitle1:
          TextStyle(color: constants.WhatsAppConstants.kBodyTextColorDark, fontFamily: _kBodyFontFamily),
          subtitle2: TextStyle(
              color: constants.WhatsAppConstants.kBodyTextColorDark.withOpacity(constants.WhatsAppConstants.kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          overline:
          TextStyle(color: constants.WhatsAppConstants.kBodyTextColorDark, fontFamily: _kBodyFontFamily),
          caption: TextStyle(
              color: constants.WhatsAppConstants.kBodyTextColorDark.withOpacity(constants.WhatsAppConstants.kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          button: TextStyle(
            color: constants.WhatsAppConstants.kBodyTextColorLight,
            fontFamily: _kBodyFontFamily,
            fontWeight: FontWeight.w600,
          ),
        ), colorScheme:const ColorScheme.dark(
          secondary: constants.WhatsAppConstants.kSecondaryDarkColor,
          surface: constants.WhatsAppConstants.kSurfaceDarkColor,
          primary: constants.WhatsAppConstants.kPrimaryColorDark,
          background: constants.WhatsAppConstants.kBlackColor,
        ).copyWith(secondary: constants.WhatsAppConstants.kAccentDarkColor),
      );

  AppBarTheme appBarTheme = AppBarTheme(
    color: constants.WhatsAppConstants.kTransparent,
    centerTitle: true,
    elevation: 0, toolbarTextStyle: TextTheme(
      headline6: TextStyle(
        fontFamily: _kTitleFontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    ).bodyText2, titleTextStyle: TextTheme(
      headline6: TextStyle(
        fontFamily: _kTitleFontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    ).headline6,
  );
}