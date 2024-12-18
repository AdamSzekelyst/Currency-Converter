// Import necessary packages and pages
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';

// Entry point of the application
void main() {
  runApp(const MyApp()); // Runs the Material Design version of the app
}

// Material Design version of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(), // Sets the home screen
    );
  }
}

// Cupertino (iOS-style) version of the app
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(), // Sets the home screen
    );
  }
}
