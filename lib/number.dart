import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Number Page'),
    //     backgroundColor: Colors.grey,
    //   ),
    //   body: Center(
    //     child: Container(
    //       decoration: BoxDecoration(border: Border.all()),
    //       child: Padding(
    //         padding: const EdgeInsets.all(16.0),
    //         child: CountryCodePicker(
    //           initialSelection: 'np',
    //           showCountryOnly: false,
    //           showOnlyCountryWhenClosed: false,
    //           favorite: const ['+977', 'NP'],
    //           enabled: true,
    //           showFlag: true,
    //           alignLeft: true,
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "enter the number",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  // ignore: prefer_const_constructors
                  child: Text(
                    "REGISTER",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Text(
                      "Enter your phone number to continue , we'll send you OTP i order to signup",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Stack(children: []),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
