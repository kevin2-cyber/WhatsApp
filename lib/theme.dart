import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WhatsAppTheme {
  // Fonts
  final _kTitleFontFamily = GoogleFonts
      .montserrat()
      .fontFamily;
  final _kBodyFontFamily = GoogleFonts
      .rubik()
      .fontFamily;

  /// Light theme
  ThemeData themeData(BuildContext context) =>
      ThemeData(
        platform: TargetPlatform.iOS,
        selectedRowColor: kSecondaryLightColor,
        appBarTheme: appBarTheme,
        disabledColor: kDisabledColor,
        errorColor: kErrorLightColor,
        toggleableActiveColor: kPrimaryColor,
        dividerTheme: DividerThemeData(
          thickness: kSpacingNone,
          color: kDisabledColor.withOpacity(kOpacityX70),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSpacingX16),
          ),
          backgroundColor: kSecondaryLightColor,
        ),
        inputDecorationTheme:
        const InputDecorationTheme(border: UnderlineInputBorder()),
        tabBarTheme: const TabBarTheme(
          labelColor: kPrimaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: kUnselectedLabelColorLight,
        ),
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kBackgroundLightColor,
        cardColor: kCardLightColor,
        backgroundColor: /*Colors.white*/ kBackgroundLightColor,
        iconTheme: const IconThemeData(color: kPrimaryIconLightColor),
        primaryIconTheme: const IconThemeData(color: kPrimaryIconLightColor),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: _kTitleFontFamily,
              color: kTitleTextColorLight,
              fontWeight: FontWeight.w600),
          headline2: TextStyle(
              fontFamily: _kTitleFontFamily,
              color: kTitleTextColorLight,
              fontWeight: FontWeight.w600),
          headline3: TextStyle(
              fontFamily: _kTitleFontFamily,
              color: kTitleTextColorLight,
              fontWeight: FontWeight.w600),
          headline4: TextStyle(
              fontFamily: _kTitleFontFamily,
              color: kTitleTextColorLight,
              fontWeight: FontWeight.w600),
          headline5: TextStyle(
              color: kTitleTextColorLight,
              fontFamily: _kBodyFontFamily,
              fontWeight: FontWeight.w600),
          headline6: TextStyle(
              color: kTitleTextColorLight,
              fontFamily: _kBodyFontFamily,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          bodyText1:
          TextStyle(color: kBodyTextColorLight, fontFamily: _kBodyFontFamily),
          bodyText2: TextStyle(
              color: kBodyTextColorLight.withOpacity(kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          subtitle1:
          TextStyle(color: kBodyTextColorLight, fontFamily: _kBodyFontFamily),
          subtitle2: TextStyle(
              color: kBodyTextColorLight.withOpacity(kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          overline:
          TextStyle(color: kBodyTextColorLight, fontFamily: _kBodyFontFamily),
          caption: TextStyle(
              color: kBodyTextColorLight.withOpacity(kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          button: TextStyle(
              color: kBodyTextColorDark,
              fontFamily: _kBodyFontFamily,
              fontWeight: FontWeight.w600),
        ), colorScheme: ColorScheme.light(
          secondary: kSecondaryLightColor,
          onSecondary: kWhiteColor,
          surface: kWhiteColor,
          primary: kPrimaryColor,
          background: kBlackColor,
        ).copyWith(secondary: kAccentLightColor),
      );

  /// Dark theme
  ThemeData darkThemeData(BuildContext context) =>
      ThemeData.dark().copyWith(
        platform: TargetPlatform.iOS,
        selectedRowColor: kSecondaryDarkColor,
        errorColor: kErrorDarkColor,
        appBarTheme: appBarTheme,
        disabledColor: kCardDarkColor,
        toggleableActiveColor: kSecondaryDarkColor,
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: kDisabledColor.withOpacity(kOpacityX70),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSpacingX16),
          ),
          backgroundColor: kPrimaryColorDark,
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: kPrimaryColorDark,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: kUnselectedLabelColorDark,
        ),
        inputDecorationTheme:
        const InputDecorationTheme(border: UnderlineInputBorder()),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: kPrimaryColorDark,
        scaffoldBackgroundColor: kBackgroundDarkColor,
        backgroundColor: kBackgroundDarkColor,
        iconTheme: const IconThemeData(color: kPrimaryIconDarkColor),
        primaryIconTheme: const IconThemeData(color: kPrimaryIconDarkColor),
        cardColor: kCardDarkColor,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: kTitleTextColorDark,
              fontWeight: FontWeight.w600,
              fontFamily: _kTitleFontFamily),
          headline2: TextStyle(
              color: kTitleTextColorDark,
              fontWeight: FontWeight.w600,
              fontFamily: _kTitleFontFamily),
          headline3: TextStyle(
              color: kTitleTextColorDark,
              fontWeight: FontWeight.w600,
              fontFamily: _kTitleFontFamily),
          headline4: TextStyle(
              color: kTitleTextColorDark,
              fontFamily: _kTitleFontFamily,
              fontWeight: FontWeight.w600),
          headline5: TextStyle(
              color: kTitleTextColorDark,
              fontFamily: _kBodyFontFamily,
              fontWeight: FontWeight.w600),
          headline6: TextStyle(
              color: kTitleTextColorDark,
              fontFamily: _kBodyFontFamily,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          bodyText1:
          TextStyle(color: kBodyTextColorDark, fontFamily: _kBodyFontFamily),
          bodyText2: TextStyle(
              color: kBodyTextColorDark.withOpacity(kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          subtitle1:
          TextStyle(color: kBodyTextColorDark, fontFamily: _kBodyFontFamily),
          subtitle2: TextStyle(
              color: kBodyTextColorDark.withOpacity(kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          overline:
          TextStyle(color: kBodyTextColorDark, fontFamily: _kBodyFontFamily),
          caption: TextStyle(
              color: kBodyTextColorDark.withOpacity(kEmphasisMedium),
              fontFamily: _kBodyFontFamily),
          button: TextStyle(
            color: kBodyTextColorLight,
            fontFamily: _kBodyFontFamily,
            fontWeight: FontWeight.w600,
          ),
        ), colorScheme:ColorScheme.dark(
          secondary: kSecondaryDarkColor,
          surface: kSurfaceDarkColor,
          primary: kPrimaryColorDark,
          background: kBlackColor,
        ).copyWith(secondary: kAccentDarkColor),
      );

  AppBarTheme appBarTheme = AppBarTheme(
    color: kTransparent,
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