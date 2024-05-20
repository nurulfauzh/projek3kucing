import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/keys/navigator_key.dart';
import 'package:mobileapp_scabies/features/dashboard/provider/dashboard_provider.dart';
import 'package:mobileapp_scabies/features/history/provider/history_provider.dart';
import 'package:mobileapp_scabies/features/scanning/provider/scanner_provider.dart';
import 'package:mobileapp_scabies/features/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DashboardProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ScannerProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HistoryProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cat Diagnos App',
        home: const SplashScreen(),
        theme: ThemeData().copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.brandColor),
          scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ).apply(
            bodyColor: Colors.black,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(158, 172, 252, 1),
            shadowColor: Colors.transparent,
            surfaceTintColor: Color.fromRGBO(158, 172, 252, 1),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            color:
                Color.fromRGBO(229, 204, 255, 1), // Ubah warna sesuai kebutuhan
            shadowColor: Colors.black,
            elevation: 20,
            surfaceTintColor: Colors.white,
          ),
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.white,
          ),
          dialogTheme: const DialogTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          ),
          datePickerTheme: const DatePickerThemeData(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          ),
        ),
        navigatorKey: navigatorKey,
      ),
    );
  }
}
