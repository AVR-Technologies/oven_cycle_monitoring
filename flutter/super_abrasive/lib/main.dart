import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: Colors.teal,
        ),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: Colors.white,
          foregroundColor: Colors.grey.shade800,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        cardColor: Colors.white,
        cardTheme: ThemeData.dark().cardTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(
              color: Colors.grey,
            ),
          ),
          elevation: 0,
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ThemeData.dark().colorScheme.copyWith(
          primary: Colors.teal,
        ),
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          backgroundColor: Colors.grey.shade900,
          foregroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.grey.shade900,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        backgroundColor: Colors.grey.shade900,
        scaffoldBackgroundColor: Colors.grey.shade900,
        cardColor: Colors.grey.shade900,
        cardTheme: ThemeData.dark().cardTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(
              color: Colors.grey,
            ),
          ),
          elevation: 0,
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
