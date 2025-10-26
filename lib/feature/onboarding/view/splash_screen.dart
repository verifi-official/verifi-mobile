import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = false;

  @override
  void initState() {
    setAnimation();
    super.initState();
  }

  void setAnimation() {
    setState(() {
      isVisible = true;
    });
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        context.go('/dashboard'); // Adjust the route as needed
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: AnimatedOpacity(
            alwaysIncludeSemantics: true,
            duration: const Duration(seconds: 3),
            curve: Curves.easeInOut,
            opacity: isVisible ? 1.0 : 0.0,
            child: Image.asset(
              'assets/logo/verifi_logo.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
