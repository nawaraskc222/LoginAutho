import 'package:click_counter/realHome.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'birthday.dart';
import 'email.dart';
import 'forget.dart';
import 'home.dart';
import 'name.dart';
import 'number.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
        const Locale("en", "US"),
      ],
      localizationsDelegates: const [
        CountryLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home',
      routes: {
        "login": (context) => const MyLogin(),
        "Register": (context) => const Register(),
        "Number": (context) => const Number(),
        "Home": (context) => const Home(),
        "realHome": ((context) => const realHome()),
        "forget": (context) => const forget(),
        "emailRegister": (context) => const emailRegister(),
      },
    );
  }
}
