import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttertest/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en', '');

  void setLocale(Locale value) {
    print(value);
    setState(() {
      _locale = value;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'flutter test',
      theme: ThemeData(
        useMaterial3: false,
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en', ''),
        Locale('fr', ''),
        Locale('es', ''),
        Locale('vi', ''),
        Locale('zh', ''),
      ],
      home: HomePage(
        onLocaleChanged: setLocale,
      ),
    );
  }
}
