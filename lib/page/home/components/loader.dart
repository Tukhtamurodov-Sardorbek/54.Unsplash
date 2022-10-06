import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24.0),
        child: Stack(
          children: [
            Center(
              child: Lottie.asset(
                'assets/animations/lottie_circular_dots.json',
                fit: BoxFit.contain,
              ),
            ),
            Center(
              child: Lottie.asset(
                'assets/animations/lottie_cube.json',
                height: 160,
                width: 160,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        // child: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Lottie.asset(
        //       'assets/animations/lottie_loading.json',
        //       height: 150,
        //       width: double.infinity,
        //       fit: BoxFit.cover,
        //     ),
        //     const SizedBox(height: 30),
        //     Lottie.asset(
        //       'assets/animations/lottie_clock.json',
        //       height: 120,
        //       width: 120,
        //       fit: BoxFit.cover,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
