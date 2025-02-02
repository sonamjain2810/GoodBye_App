import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/SizeConfig.dart';

class AppTheme {
  //default constructor
  AppTheme._();

  // yaha per sab color define kiye hai jo hame ThemeData me use karege light Theme.
  static const Color _lightIconColor = Colors.grey;
  static  const Color _lightPrimaryColor = Colors.white60;
  static const MaterialColor _lightPrimaryVariantColor = Colors.indigo;
  static const Color _lightSecondaryColor = Colors.grey;
  static const Color _lightOnPrimaryColor = Colors.white;
  static final Color? _lightPrimaryIconThemeColor = Colors.cyan[600];
  static const Color _lightButtonTextColor = Colors.white;
  static final Color? _lightButtonColor = Colors.pink[300];
  static final Color? _lightButtonSplashColor = Colors.purpleAccent[700];
  static const Color _lightAppBarTextColor = Colors.white;
  static const Color _lightDividerColor = Colors.white;
  static final Color? _lightCardColor = Colors.cyan[600];
  static const Color _lightShadowColor = Colors.grey;

// yaha per sab color define kiye hai jo hame ThemeData me use karege dark Theme.

  static const Color _darkIconColor = Colors.white;
  static const Color _darkPrimaryColor = Colors.black;
  static final Color? _darkPrimaryVariantColor = Colors.grey[800];
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;
  static const Color _darkPrimaryIconThemeColor = Colors.red;
  static const Color _darkButtonTextColor = Colors.white;
  static const Color _darkButtonColor = Colors.red;
  static const Color _darkButtonSplashColor = Colors.blue;
  static const Color _darkAppBarTextColor = Colors.white;
  static const Color _darkDividerColor = Colors.white;
  static const Color _darkCardColor = Colors.grey;
  static const Color _darkShadowColor = Colors.white70;

// upar jo hamne light theme ke colors banaye the woh ThemeData me use karege
  static final ThemeData lightTheme = ThemeData(
    // primaryColor use to color the AppBar, BottomBar & NavigationBar
    // it also automatically set the text color of it according to the primaryColor.
    //primaryColor: ,
    scaffoldBackgroundColor: _lightPrimaryColor,
    primarySwatch: _lightPrimaryVariantColor,
    dividerColor: _lightDividerColor,
    appBarTheme: AppBarTheme(
      //color: _lightPrimaryVariantColor,
      toolbarTextStyle: _lightAppBarTextTextTheme.displayLarge,
      elevation: 8.0,
      iconTheme:  const IconThemeData(
        color: _lightButtonTextColor,
      ),
    ),

    textTheme: TextTheme(
      headlineSmall: GoogleFonts.oswald(
        textStyle: const TextStyle(color: _lightOnPrimaryColor),
      ),
      //Side Bar List Items Text Color
      titleSmall: 
         const TextStyle(color: _lightOnPrimaryColor),
      
      titleLarge: GoogleFonts.ptSans(
        textStyle: const TextStyle(color: _lightDividerColor),
      ),
      titleMedium: GoogleFonts.ptSans(
        textStyle: const TextStyle(color: _lightDividerColor),
      ),
      labelLarge: GoogleFonts.ptSans(
        textStyle: const TextStyle(color: _lightOnPrimaryColor),
      ),
      bodyLarge: GoogleFonts.ptSans(
        textStyle: const TextStyle(color: _lightDividerColor),
      ),
      bodyMedium: GoogleFonts.ptSans(
        textStyle: const TextStyle(color: _lightOnPrimaryColor),
      ),
      bodySmall: GoogleFonts.ptSans(
        textStyle: const TextStyle(color: _lightOnPrimaryColor),
      ),
    ),

        iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),

    primaryIconTheme: const IconThemeData(color: _lightButtonTextColor),

    buttonTheme: _lightButtonThemeData,

    // Drawer Color
    canvasColor: _lightPrimaryColor,
    
    // Card Color
    cardTheme: _lightCardTheme,

    inputDecorationTheme: _lightInputDecorationTheme,

    

  // Change circular progress bar color
    hintColor: _lightPrimaryVariantColor,
    
  );

  static final InputDecorationTheme _lightInputDecorationTheme =
      InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: _lightPrimaryVariantColor),
      borderRadius: BorderRadius.circular(20.0),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: _lightPrimaryVariantColor),
    ),
    hintStyle: GoogleFonts.ptSans(textStyle: _lightScreenBodyText1TextStyle),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
  );
// light Appbar text Styling
  static final TextTheme _lightAppBarTextTextTheme = TextTheme(
    headline1: GoogleFonts.lobster(textStyle: _lightAppBarHeadline1TextStyle),
  );

  static const TextStyle _lightAppBarHeadline1TextStyle = TextStyle(
    
  );

  static final ButtonThemeData _lightButtonThemeData = ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: _lightButtonColor,
    splashColor: _lightButtonSplashColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );

  // Button text Styling
  static final TextStyle _lightButtonTextTextStyle = TextStyle(
    fontSize: 1.56 * SizeConfig.textMultiplier,
    color: _lightButtonTextColor,
  );

  /*static final TextTheme _lightTextTheme = TextTheme(
    headline1: GoogleFonts.oswald(textStyle: _lightScreenHeading1TextStyle),
    bodyText1: GoogleFonts.ptSans(textStyle: _lightScreenBodyText1TextStyle),
    bodyText2: GoogleFonts.ptSans(textStyle: _lightScreenBodyText2TextStyle),
    subtitle1: GoogleFonts.ptSans(textStyle: _lightScreenSubTitle1TextStyle),
    subtitle2: GoogleFonts.ptSans(textStyle: _lightScreenSubTitle2TextStyle),
    button: GoogleFonts.ptSans(textStyle: _lightButtonTextTextStyle),
  );*/

  // Text headline1 styling
  static final TextStyle _lightScreenHeading1TextStyle = TextStyle(
    //fontSize : 24
    fontSize: 2.68 * SizeConfig.textMultiplier,
    fontWeight: FontWeight.bold,
    color: _lightOnPrimaryColor,
    letterSpacing: 1,
  );

  // Text bodyText1 styling
  static final TextStyle _lightScreenBodyText1TextStyle = TextStyle(
    //fontSize: 20
    fontSize: 2.23 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
    letterSpacing: .5,
  );

  // Text bodyText2 styling
  static final TextStyle _lightScreenBodyText2TextStyle = TextStyle(
    //fontSize: 20
    fontSize: 2 * SizeConfig.textMultiplier,
    color: _lightPrimaryColor,
    letterSpacing: .5,
  );

  static final TextStyle _lightScreenSubTitle1TextStyle = TextStyle(
    //fontSize: 16
    fontSize: 1.79 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
    letterSpacing: .3,
  );

  static final TextStyle _lightScreenSubTitle2TextStyle = TextStyle(
    //fontSize: 16
    fontSize: 1.60 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
    letterSpacing: .10,
  );

  static final CardTheme _lightCardTheme = CardTheme(
    elevation: 6.0,
    color: _lightCardColor,
    shadowColor: _lightShadowColor,
  );

  // upar jo hamne dark theme ke colors banaye the woh ThemeData me use karege
  static final ThemeData darkTheme = ThemeData(
     scaffoldBackgroundColor: _darkPrimaryColor,

    // AppBar
    appBarTheme: AppBarTheme(
      color: _darkPrimaryVariantColor,
//titleTextStyle: _darkAppBarTextTextTheme,      
//textTheme: _darkAppBarTextTextTheme,
      elevation: 8.0,
      iconTheme: const IconThemeData(
        color: _darkOnPrimaryColor,
      ),
    ),
    
    colorScheme: ColorScheme.light(
      primary: _darkPrimaryColor,
      //primaryVariant: _darkPrimaryVariantColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
    ),

    iconTheme: IconThemeData(
      color: _darkIconColor,
    ),

    primaryIconTheme: IconThemeData(color: _darkPrimaryIconThemeColor),

    textTheme: _darkTextTheme,

    buttonTheme: _darkButtonThemeData,

    // Drawer Color
    canvasColor: _darkPrimaryColor,
    // Divider Color
    dividerColor:  _darkDividerColor,
    // Card theme
    cardTheme: _darkCardTheme,

    inputDecorationTheme: _darkInputDecorationTheme,

  );

  static final InputDecorationTheme _darkInputDecorationTheme =
      InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _darkPrimaryVariantColor!),
      borderRadius: BorderRadius.circular(20.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _darkPrimaryVariantColor!),
    ),
    hintStyle: GoogleFonts.ptSans(textStyle: _darkScreenBodyText1TextStyle),
    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
  );
  // light Appbar text Styling
  static final TextTheme _darkAppBarTextTextTheme = TextTheme(
    headline1: GoogleFonts.lobster(textStyle: _darkAppBarHeadline1TextStyle),
  );

  static final TextStyle _darkAppBarHeadline1TextStyle =
      _lightAppBarHeadline1TextStyle.copyWith(
    color: _darkAppBarTextColor,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: GoogleFonts.oswald(textStyle: _darkScreenHeading1TextStyle),
    bodyText1: GoogleFonts.ptSans(textStyle: _darkScreenBodyText1TextStyle),
    subtitle1: GoogleFonts.ptSans(textStyle: _darkScreenSubTitle1TextStyle),
    subtitle2: GoogleFonts.ptSans(textStyle: _darkScreenSubTitle2TextStyle),
    button: GoogleFonts.ptSans(textStyle: _darkButtonTextTextStyle),
  );

  // Text headline1 styling
  static final TextStyle _darkScreenHeading1TextStyle =
      _lightScreenHeading1TextStyle.copyWith(
    color: _darkOnPrimaryColor,
  );

  // Text bodyText1 styling
  static final TextStyle _darkScreenBodyText1TextStyle =
      _lightScreenBodyText1TextStyle.copyWith(
    color: _darkOnPrimaryColor,
  );

  // Text subTitle1 styling
  static final TextStyle _darkScreenSubTitle1TextStyle =
      _lightScreenSubTitle1TextStyle.copyWith(
    color: _darkOnPrimaryColor,
  );

  // Text subTitle2 styling
  static final TextStyle _darkScreenSubTitle2TextStyle =
      _lightScreenSubTitle2TextStyle.copyWith(
    color: _darkOnPrimaryColor,
  );
  // Button Theme
  static final ButtonThemeData _darkButtonThemeData =
      _lightButtonThemeData.copyWith(
    buttonColor: _darkButtonColor,
    splashColor: _darkButtonSplashColor,
  );
  // dark Button text Styling
  static final TextStyle _darkButtonTextTextStyle =
      _lightButtonTextTextStyle.copyWith(
    color: _darkButtonTextColor,
  );

  static final CardTheme _darkCardTheme = _lightCardTheme.copyWith(
    color: _darkCardColor,
    shadowColor: _darkShadowColor,
  );

  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
