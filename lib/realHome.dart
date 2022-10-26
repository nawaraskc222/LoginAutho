import 'package:flutter/material.dart';

class realHome extends StatefulWidget {
  const realHome({Key? key}) : super(key: key);

  // const realHome({super.key});

  @override
  State<realHome> createState() => _realHomeState();
}

class _realHomeState extends State<realHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: const Text(
          "you are logged in",
        ),
      ),
    );
  }
}
