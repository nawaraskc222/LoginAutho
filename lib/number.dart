import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Page'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CountryCodePicker(
              initialSelection: 'np',
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
              favorite: const ['+977', 'NP'],
              enabled: true,
              showFlag: true,
              alignLeft: true,
            ),
          ),
        ),
      ),
    );
  }
}
