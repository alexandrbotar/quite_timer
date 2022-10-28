import 'package:flutter/material.dart';
import 'package:quite_timer/screens/first_open/first_open.dart';
import 'package:quite_timer/screens/log_in/log_in.dart';
import 'package:quite_timer/screens/sign_up/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quite Timer',
      theme: ThemeData.light(),
      home: const FirstOpen(),
      routes: {
        'main': (context) => const FirstOpen(),
        'main/logIn': (context) => const LogInWidget(),
        'main/signUp': (context) => const SignUpWidget(),
      },
      initialRoute: 'main',
    );
  }
}
