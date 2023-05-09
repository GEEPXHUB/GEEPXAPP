import 'package:flutter/material.dart';
import 'package:geepx1/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Color Scheme/color_schemes.g.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ).copyWith(
        appBarTheme: AppBarTheme(
          actionsIconTheme: IconThemeData(
            color: lightColorScheme.onPrimary,
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
          height: 60,
          indicatorColor: lightColorScheme.primary.withOpacity(0.2),
          backgroundColor: lightColorScheme.onPrimary,
          iconTheme:MaterialStatePropertyAll(IconThemeData(color: lightColorScheme.primary),),
          labelTextStyle: MaterialStatePropertyAll(
            GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: lightColorScheme.inverseSurface,
                letterSpacing: 0.5,
              ),
            ),
          )
        ),
        colorScheme: ColorScheme(
          background: lightColorScheme.background,
          brightness: lightColorScheme.brightness,
          primary: lightColorScheme.onPrimary,
          onPrimary: lightColorScheme.onPrimary,
          secondary: lightColorScheme.onSecondary,
          onSecondary: lightColorScheme.onSecondary,
        error: lightColorScheme.error,
        onError: lightColorScheme.onError,
        onBackground: lightColorScheme.onBackground,
        surface: lightColorScheme.surface,
        onSurface: lightColorScheme.onSurface,
      ),
      ),
      darkTheme:
      ThemeData(useMaterial3: true, colorScheme: darkColorScheme)
          .copyWith(
        appBarTheme: AppBarTheme(
          actionsIconTheme: IconThemeData(
            color: darkColorScheme.onBackground,
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
            height: 60,
            indicatorColor: darkColorScheme.primary.withOpacity(0.2),
            backgroundColor: darkColorScheme.background,
            iconTheme:MaterialStatePropertyAll(IconThemeData(color: darkColorScheme.primary),),
            labelTextStyle: MaterialStatePropertyAll(
              GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: darkColorScheme.inverseSurface,
                  letterSpacing: 0.5,
                ),
              ),
            )
        ),
        colorScheme: ColorScheme(
        background: darkColorScheme.background,
        brightness: darkColorScheme.brightness,
        primary: darkColorScheme.onPrimary,
        onPrimary: darkColorScheme.onPrimary,
        secondary: darkColorScheme.onSecondary,
        onSecondary: darkColorScheme.onSecondary,
        error: darkColorScheme.error,
        onError: darkColorScheme.onError,
        onBackground: darkColorScheme.onBackground,
        surface: darkColorScheme.surface,
        onSurface: darkColorScheme.onSurface,
      ),
      ),
      home: const Home(),
    );
  }
}

