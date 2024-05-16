import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'Features/search/data/search_provider.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, themeProvider, child) {
      return MultiProvider(
          providers: [
            ChangeNotifierProvider<SearchProvider>(
                create: (context) => SearchProvider()),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
          ));
    });
  }
}
