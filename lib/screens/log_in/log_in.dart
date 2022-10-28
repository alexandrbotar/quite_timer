import 'package:flutter/material.dart';
import 'package:quite_timer/screens/templates/navigationButtons.dart';
import 'package:quite_timer/screens/templates/signOrLogForm.dart';
import 'package:quite_timer/theme/const_theme.dart';

class LogInWidget extends StatelessWidget {
  final String signOrLog = 'Log in';
  const LogInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: ConstColorTheme.backGrounColor,
            padding: const EdgeInsets.fromLTRB(38, 56, 38, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  signOrLog,
                  style: ConstTextTheme.labelTextTheme,
                )),
                const SizedBox(height: 49),
                SignOrLogWidget(signOrLog: signOrLog),
                const SizedBox(height: 103),
                NavigationButtons(signOrLog: signOrLog),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
