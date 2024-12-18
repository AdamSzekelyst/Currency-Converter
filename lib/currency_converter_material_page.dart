import 'package:flutter/material.dart';

// Main page for the Material Design currency converter
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

// State management for the Material Design currency converter
class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0; // Stores the converted value
  final TextEditingController textEditingController =
      TextEditingController(); // Controls the input field

  @override
  Widget build(BuildContext context) {
    // Defines the input field border style
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    );

    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 53, 93, 131), // Page background color
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 53, 93, 131), // App bar background color
        elevation: 0,
        title: const Text(
          'Currency Converter', // Title of the app bar
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Displays the converted result
            Text(
              "${result.toStringAsFixed(2)} HUF",
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            // Input field for entering the USD amount
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, // Allows decimal inputs
                ),
              ),
            ),
            // Button to perform the conversion
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) *
                        393; // Conversion logic (USD to HUF)
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize:
                      const Size(double.infinity, 50), // Full-width button
                ),
                child: const Text('Convert'), // Button label
              ),
            ),
          ],
        ),
      ),
    );
  }
}
