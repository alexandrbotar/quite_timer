import 'package:flutter/material.dart';
import 'package:quite_timer/theme/const_theme.dart';

class NavigationButtons extends StatelessWidget {
  final String signOrLog;
  const NavigationButtons({super.key, required this.signOrLog});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ConstButtonTheme.darkButtonTheme,
              child: Text(
                signOrLog,
                style: ConstTextTheme.lightTextTheme,
              ),
            ),
          ),
          const SizedBox(height: 30),
          signOrLog == 'Sign up'
              ? const SizedBox.shrink()
              : SizedBox(
                  width: 280,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ConstButtonTheme.lightButtonTheme,
                    child: const Text(
                      'Forgot Password',
                      style: ConstTextTheme.darkTextTheme,
                    ),
                  ),
                ),
          signOrLog == 'Sign up'
              ? const SizedBox(height: 20)
              : const SizedBox(height: 50),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'main');
            },
            child: const Text(
              'Back',
              style: ConstTextTheme.darkTextTheme,
            ),
          )
        ],
      ),
    );
  }
}
