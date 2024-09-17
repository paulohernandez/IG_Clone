import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ig_clone/app/routing/app_routing.dart';
import 'package:ig_clone/l10n/l10n.dart';

class CustomThemeData {
  ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFFB00D05),
    primary: const Color(0xFFB00D05),
  );

  TextTheme textTheme = GoogleFonts.robotoCondensedTextTheme().copyWith(
    titleLarge: const TextStyle(fontSize: 50),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = AppRouting.router;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
        colorScheme: CustomThemeData().colorScheme,
      ),
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
        colorScheme: CustomThemeData().colorScheme,
      ),
      routeInformationProvider: goRouter.routeInformationProvider,
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
