import 'package:flutter/cupertino.dart';

// Main page for the Cupertino (iOS-style) currency converter
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

// State management for the Cupertino currency converter
class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0; // Stores the converted value
  final TextEditingController textEditingController =
      TextEditingController(); // Controls the input field

  // Conversion function to calculate the result
  void convert() {
    result = double.parse(textEditingController.text) *
        393; // Conversion logic (USD to HUF)
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3, // Page background color
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3, // Navigation bar color
        middle: Text('Currency Converter'), // Title of the navigation bar
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Displays the converted result
              Text(
                'HUF ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              // Input field for entering the USD amount
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, // Allows decimal inputs
                ),
              ),
              const SizedBox(height: 10),
              // Button to perform the conversion
              CupertinoButton(
                onPressed: convert, // Calls the convert function
                color: CupertinoColors.black,
                child: const Text('Convert'), // Button label
              ),
            ],
          ),
        ),
      ),
    );
  }
}
