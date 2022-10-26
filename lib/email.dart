import 'package:flutter/material.dart';

import 'name.dart';

// ignore: camel_case_types
class emailRegister extends StatefulWidget {
  const emailRegister({Key? key}) : super(key: key);

  @override
  State<emailRegister> createState() => _emailRegisterState();
}

// ignore: camel_case_types
class _emailRegisterState extends State<emailRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Email register",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  obscureText: false,
                  // obscureText: pass,
                  decoration: const InputDecoration(
                    labelText: "Email", //babel text
                    hintText: "Enter your UserNAme", //hint text
                    prefixIcon: Icon(Icons.people), //prefix iocn
                    // ignore: prefer_const_constructors
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold), //hint text style
                    labelStyle: TextStyle(
                        fontSize: 13, color: Colors.redAccent), //label style
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                      return "Enter Correct Email Address";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "password", //babel text
                    hintText: "Enter your password", //hint text
                    prefixIcon: Icon(Icons.people), //prefix iocn
                    // ignore: prefer_const_constructors
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold), //hint text style
                    labelStyle: TextStyle(
                        fontSize: 13, color: Colors.redAccent), //label style
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(value)) {
                      return "Enter Correct Email Address";
                    } else {
                      return null;
                    }
                  },
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyLogin()),
                      );
                    },
                    child: const Text(
                      "NEXT",
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
