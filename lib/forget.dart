import 'package:flutter/material.dart';

// ignore: camel_case_types
class forget extends StatefulWidget {
  const forget({Key? key}) : super(key: key);
  @override
  State<forget> createState() => _forgetState();
}

// ignore: camel_case_types
class _forgetState extends State<forget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: const Text(
          "forget passoword?",
        ),
      ),
    );
  }
}
