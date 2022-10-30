import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

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
  late String _email, _password;
  final auth = FirebaseAuth.instance;

  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  // // TextEditingController emailController = TextEditingController();

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text(
  //         "Email register",
  //       ),
  //     ),
  //     body: SafeArea(
  //       child: SingleChildScrollView(
  //         child: SizedBox(
  //           width: double.infinity,
  //           child: Column(
  //             // ignore: prefer_const_literals_to_create_immutables
  //             children: [
  //               const SizedBox(
  //                 height: 50,
  //               ),
  //               TextFormField(
  //                 onChanged: ((value) {
  //                   setState() {
  //                     _email = value.trim();
  //                   }
  //                 }),
  //                 obscureText: false,
  //                 keyboardType: TextInputType.emailAddress,
  //                 // obscureText: pass,
  //                 decoration: const InputDecoration(
  //                   labelText: "Email", //babel text
  //                   hintText: "Enter your UserNAme", //hint text
  //                   prefixIcon: Icon(Icons.people), //prefix iocn
  //                   // ignore: prefer_const_constructors
  //                   hintStyle: TextStyle(
  //                       fontSize: 18,
  //                       fontWeight: FontWeight.bold), //hint text style
  //                   labelStyle: TextStyle(
  //                       fontSize: 13, color: Colors.redAccent), //label style
  //                 ),
  //                 validator: (value) {
  //                   if (value!.isEmpty ||
  //                       !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
  //                           .hasMatch(value)) {
  //                     return "Enter Correct Email Address";
  //                   } else {
  //                     return null;
  //                   }
  //                 },
  //               ),
  //               TextFormField(
  //                 onChanged: ((value) {
  //                   setState() {
  //                     _password = value.trim();
  //                   }
  //                 }),
  //                 obscureText: true,
  //                 enableSuggestions: false,
  //                 autocorrect: false,
  //                 // keyboardType: TextInputType.visiblePassword,
  //                 decoration: const InputDecoration(
  //                   labelText: "password", //babel text
  //                   hintText: "Enter your password", //hint text
  //                   prefixIcon: Icon(Icons.people), //prefix iocn
  //                   // ignore: prefer_const_constructors
  //                   hintStyle: TextStyle(
  //                       fontSize: 18,
  //                       fontWeight: FontWeight.bold), //hint text style
  //                   labelStyle: TextStyle(
  //                       fontSize: 13, color: Colors.redAccent), //label style
  //                 ),
  //                 validator: (value) {
  //                   if (value!.isEmpty ||
  //                       !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
  //                           .hasMatch(value)) {
  //                     return "Enter Correct Email Address";
  //                   } else {
  //                     return null;
  //                   }
  //                 },
  //               ),
  //               TextButton(
  //                   onPressed: () {
  //                     auth.createUserWithEmailAndPassword(
  //                         email: _email, password: _password);
  //                     Navigator.push(
  //                       context,
  //                       MaterialPageRoute(
  //                           builder: (context) => const MyLogin()),
  //                     );
  //                   },
  //                   child: const Text(
  //                     "NEXT",
  //                   )),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  void createAccount() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cPassword = cPasswordController.text.trim();

    if (email == "" || password == "" || cPassword == "") {
      log("Please fill all the details!");
    } else if (password != cPassword) {
      log("Passwords do not match!");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        if (userCredential.user != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyLogin()),
          );
        }
      } on FirebaseAuthException catch (ex) {
        log(ex.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Create an account"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: "Email Address"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: cPasswordController,
                    decoration: InputDecoration(labelText: "Confirm Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CupertinoButton(
                    onPressed: () {
                      print("done");
                      // createAccount();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyLogin()),
                      );
                    },
                    color: Colors.blue,
                    child: Text("Create Account"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
