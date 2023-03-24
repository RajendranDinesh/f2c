import 'dart:async';

import 'package:flutter/material.dart';
import 'package:f2c/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'F2C',
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Boarding()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 187, 14, 1),
        ),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
              TextButton(
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Boarding())),
                      child: Row(children: const [
                        Text(
                          "Skip",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        )
                      ])),],),
              const SizedBox(
                height: 362,
              ),
              Image.asset(
                "assets/images/splash_logo.png",
                width: 234,
                height: 271,
              ),
              const SizedBox(height: 16),
              const Text(
                "F2C",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
