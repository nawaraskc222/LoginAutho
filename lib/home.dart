import 'package:click_counter/realHome.dart';
import 'package:flutter/material.dart';

import 'birthday.dart';
import 'forget.dart';
import 'name.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("home page"),
        ),
        // appBar: AppBar(
        //     // shadowColor: Colors.amber,
        //     ),
        backgroundColor: Colors.grey[350],
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 50),
              child: const Text(
                "Enter your email and password ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 33,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.20,
                    right: 34,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.amber,
                          filled: true,
                          hintText: "email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    // const Padding(padding: EdgeInsets.all(10)),

                    const SizedBox(
                      height: 30,
                    ),

                    TextField(
                      // obscureText: true, thi used for password
                      decoration: InputDecoration(
                          fillColor: Colors.amber,
                          filled: true,
                          hintText: "password ",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const realHome()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 171, 169, 161),
                        // onSurface: Colors.amber,
                      ),
                      child: const Text(
                        "Login",
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const forget()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 171, 169, 161),
                        // onSurface: Colors.amber,
                      ),
                      child: const Text(
                        "Forget Passord?",
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(left: 140, top: 500, right: 45),
                      padding: EdgeInsets.only(
                          // top: MediaQuery.of(context).size.height * 0.70,
                          right: 34,
                          left: 130),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyLogin()),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 171, 169, 161),
                          // onSurface: Colors.amber,
                        ),
                        child: const Text(
                          "Signup",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.only(left: 35, top: 445),
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => const Register()),
            //       );
            //     },
            //     style: TextButton.styleFrom(
            //       backgroundColor: const Color.fromARGB(255, 171, 169, 161),
            //       // onSurface: Colors.amber,
            //     ),
            //     child: const Text(
            //       "Forget Passord?",
            //     ),
            //   ),
            // ),
            // Container(
            //   // padding: const EdgeInsets.only(left: 140, top: 500, right: 45),
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.70,
            //       right: 34,
            //       left: 130),
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => const Register()),
            //       );
            //     },
            //     style: TextButton.styleFrom(
            //       backgroundColor: const Color.fromARGB(255, 171, 169, 161),
            //       // onSurface: Colors.amber,
            //     ),
            //     child: const Text(
            //       "Signup",
            //     ),
            //   ),
            // ),
            // Row(
            //   children: const [
            //     TextButton(
            //       onPressed: null,
            //       child: Text("sign in"),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
