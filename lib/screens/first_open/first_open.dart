import 'package:flutter/material.dart';
import 'package:quite_timer/theme/const_theme.dart';

class FirstOpen extends StatelessWidget {
  const FirstOpen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: ConstColorTheme.backGrounColor,
            padding: const EdgeInsets.only(top: 126),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LabelWidget(),
                SizedBox(height: 80),
                ButtonsWidget(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  const LabelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text('Quit timer', style: ConstTextTheme.labelTextTheme),
        ),
        const SizedBox(height: 86),
        Padding(
          padding: media < 600
              ? EdgeInsets.zero
              : EdgeInsets.only(left: media / 4.3),
          child: Image.asset(
            'assets/images/logo.png',
            width: media < 600 ? media / 1.66 : 400,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'main/signUp');
              },
              style: ConstButtonTheme.darkButtonTheme,
              child:
                  const Text('Sign up', style: ConstTextTheme.lightTextTheme),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'main/logIn');
              },
              style: ConstButtonTheme.lightButtonTheme,
              child: const Text('Log in', style: ConstTextTheme.darkTextTheme),
            ),
          ),
        ],
      ),
    );
  }
}
