// ignore: file_names
import 'package:flutter/material.dart';

import 'number.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

// ignore: camel_case_types
class _RegisterState extends State<Register> {
  // ignore: unused_field
  DateTime date = DateTime.now();
  String? day, month, year;
  late DateTime day1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Register Page'),
        backgroundColor: Colors.grey,
      ),
      body: Stack(
        children: [
          Container(
              child: const Text("When is your Birthday?",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300))),
          Container(
              padding: const EdgeInsets.all(80.0),
              child: Text("${date.year}/${date.month}/${date.day}",
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.w300))),
          Container(
            padding: const EdgeInsets.all(150.0),
            child: ElevatedButton(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (newDate == null) {
                  return;
                } else {
                  setState(() {
                    date = newDate;
                  });
                }
              },
              child: const Text(
                "Select date",
              ),
            ),
          ),
          Column(
            children: [
              const Padding(padding: EdgeInsets.all(150.0)),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Number()),
                  );
                },
                child: const Text(
                  "Accept",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
