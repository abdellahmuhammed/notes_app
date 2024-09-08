// ignore_for_file: unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app/Shared/Constant.dart';

ThemeData lightThem() {
  return _themData(
      backgroundColor: Colors.white,
      textColor: Colors.black,
      statusBarIconBrightness: Brightness.dark);
}

ThemeData darkThem() {
  return _themData(
    backgroundColor: const Color(0xFF2D2F31),
    textColor: Colors.white,
    statusBarIconBrightness: Brightness.light,
  );
}

ThemeData _themData({
  required Color backgroundColor,
  required Color textColor,
  required Brightness statusBarIconBrightness,
}) {
  return ThemeData(
    useMaterial3: false,
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: backgroundColor,
    textTheme: TextTheme(
      headlineLarge: _buildTextStyle(
        color: textColor,
      ),
      headlineSmall: _buildTextStyle(
        color: Colors.grey,
      ),
      titleLarge: _buildTextStyle(color: textColor, size: 25),
      titleSmall: _buildTextStyle(color: Colors.grey, size: 20),
      bodyLarge: _buildTextStyle(color: textColor, size: 20),
      bodySmall: _buildTextStyle(color: Colors.grey, size: 16),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: textColor,
        statusBarIconBrightness: statusBarIconBrightness,
        statusBarColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      iconSize: 35,
      backgroundColor: kPrimaryColor,
      foregroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // filled: true,
      // fillColor: Colors.grey.withOpacity(0.7),
      enabledBorder: _buildOutlineInputBorder(),
      focusedBorder: _buildOutlineInputBorder(kPrimaryColor),
      border: _buildOutlineInputBorder(),
      labelStyle: const TextStyle(
        overflow: TextOverflow.ellipsis,
        color: kPrimaryColor,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
      iconColor: kPrimaryColor,
      suffixIconColor: kPrimaryColor,
      prefixIconColor: kPrimaryColor,
    ),
    // iconTheme: _buildIconThemeData(color: textColor),
    // iconButtonTheme: IconButtonThemeData(
    //   style: ButtonStyle(
    //     padding: WidgetStateProperty.all(EdgeInsets.zero),
    //     backgroundColor:
    //         WidgetStateProperty.all(kPrimaryColor.shade500.withOpacity(.99)),
    //     foregroundColor: WidgetStateProperty.all(textColor),
    //     // child color
    //     minimumSize: WidgetStateProperty.all<Size?>(
    //       const Size(45, 45),
    //     ),
    //     shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(8),
    //       ),
    //     ),
    //   ),
    // ),
    // textButtonTheme: TextButtonThemeData(
    //   style: ButtonStyle(
    //     backgroundColor: WidgetStateProperty.all(kPrimaryColor),
    //     foregroundColor: WidgetStateProperty.all(textColor),
    //     // child color
    //     minimumSize: WidgetStateProperty.all<Size?>(
    //       const Size(double.infinity, 50),
    //     ),
    //     shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(3),
    //       ),
    //     ),
    //     textStyle: WidgetStateProperty.all<TextStyle>(
    //       const TextStyle(
    //         fontSize: 30.0,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //   ),
    // ),
    // menuButtonTheme: MenuButtonThemeData(
    //   style: ButtonStyle(
    //     elevation: WidgetStateProperty.all(0.0),
    //     backgroundColor: WidgetStateProperty.all(kPrimaryColor),
    //     foregroundColor: WidgetStateProperty.all(textColor),
    //     // child color
    //     minimumSize: WidgetStateProperty.all<Size?>(
    //       const Size(double.infinity, 50),
    //     ),
    //     shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(8),
    //       ),
    //     ),
    //     textStyle: WidgetStateProperty.all<TextStyle>(
    //       const TextStyle(
    //         fontSize: 30.0,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //   ),
    // ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: kPrimaryColor,
    //   selectedItemColor: textColor,
    //   unselectedItemColor: backgroundColor,
    //   selectedIconTheme: _buildIconThemeData(
    //     color: textColor,
    //     size: 20,
    //   ),
    //   selectedLabelStyle: _buildTextStyle(
    //     color: backgroundColor,
    //     size: 20,
    //   ),
    //   unselectedIconTheme:
    //       _buildIconThemeData(color: Colors.lightBlueAccent, size: 20),
    //   unselectedLabelStyle: _buildTextStyle(
    //       color: textColor, fontWeight: FontWeight.normal, size: 15),
    // ),
  );
}

OutlineInputBorder _buildOutlineInputBorder([Color? color = Colors.white]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? kPrimaryColor, width: 2),
    borderRadius: BorderRadius.circular(8),
  );
}
_buildTextStyle(
    {required Color color,
    double size = 30,
    FontWeight fontWeight = FontWeight.bold}) {
  return TextStyle(color: color, fontSize: size, fontWeight: fontWeight);
}


_buildIconThemeData({required Color color, double size = 30}) {
  return IconThemeData(
    color: color,
    size: size,
  );
}
