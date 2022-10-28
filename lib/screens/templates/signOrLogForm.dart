import 'package:flutter/material.dart';
import 'package:quite_timer/theme/const_theme.dart';

class SignOrLogWidget extends StatelessWidget {
  final String signOrLog;
  const SignOrLogWidget({super.key, required this.signOrLog});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text('Email:', style: ConstTextTheme.darkTextTheme),
        ),
        SizedBox(
          height: 55,
          width: 338,
          child: TextField(
            decoration: ConstTextFieldTheme.textFieldEmailTheme,
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
          child: Text('Password', style: ConstTextTheme.darkTextTheme),
        ),
        SizedBox(
          height: 55,
          width: 338,
          child: TextField(
            decoration: ConstTextFieldTheme.textFieldPasswordTheme,
          ),
        ),
        signOrLog == 'Log in'
            ? const SizedBox.shrink()
            : Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                    child: Text('Confirm Password',
                        style: ConstTextTheme.darkTextTheme),
                  ),
                  SizedBox(
                    height: 55,
                    width: 338,
                    child: TextField(
                      decoration:
                          ConstTextFieldTheme.textFieldPasswordConfirmTheme,
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
