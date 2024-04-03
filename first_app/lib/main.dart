import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 33, 5, 109),
          const Color.fromARGB(255, 68, 21, 149),
        ),
        // body: GradientContainer(
        //   [
        //     Color.fromARGB(255, 26, 2, 80),
        //     Color.fromARGB(255, 45, 7, 98),
        //   ],
        // ),
      ),
    ),
  );
}
