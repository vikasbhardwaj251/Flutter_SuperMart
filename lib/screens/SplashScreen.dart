import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:super_mart/utils/AppRoutes.dart';
import 'package:super_mart/utils/image_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _splashTimer;

  @override
  void initState() {
    super.initState();

    // - - 3 second delay
    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRoutes.home,
        (route) => false,
      );
    });
  }

  @override
  void dispose() {
    _splashTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // - - Background Imgae
          Image.asset(ImageConstants.app_bg, fit: BoxFit.cover),

          // - - Dark overlay ()
          Container(color: Colors.black.withOpacity(0.4)),

          // - - Lottie image
          Center(
            child: Lottie.asset(
              ImageConstants.splash_lottie,
              fit: BoxFit.cover,
              repeat: true, // loop on/off
              animate: true, //autoplay on/off
            ),
          ),
        ],
      ),
    );
  }
}
