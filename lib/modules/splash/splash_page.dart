import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_task_v1/shared/theme/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Timer(
    //   const Duration(seconds: 3),
    //   () {
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(
    //         builder: (_) => HomePage(),
    //       ),
    //     );
    //   },
    // );

    // Load timer
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed('/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _logo(),
        // Positioned(
        //   bottom: 30,
        //   child: _info(),
        // ),
      ],
    ));
  }
}

Widget _logo() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.logo,
          width: 70,
        ),
        const Text(
          'Note-Task',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        ),
        const Text('Escreva e Lembre-se!'),
        const SizedBox(height: 30),
        const CircularProgressIndicator(
          color: Color(0xffFFA93F),
        ),
      ],
    ),
  );
}

// Develloper information component
// ignore: unused_element
Widget _info() {
  return Center(
    child: RichText(
      text: TextSpan(
        children: <TextSpan>[
          const TextSpan(
              text: 'By\n',
              style: TextStyle(fontSize: 15, color: Colors.black)),
          TextSpan(
            text: 'Lequechane',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.blue.shade900),
          ),
        ],
      ),
    ),
  );
}
