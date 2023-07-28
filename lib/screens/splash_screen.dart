import 'dart:async';

import 'package:flutter/material.dart';

import '../modals/introduction_page_view_model.dart';
import 'introduction_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff145063),
        ),
        child: Center(
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/ikon - gradient.png',
                  width: 150,
                  height: 150,
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 2.9,
                left: MediaQuery.of(context).size.width / 6,
                child: const Text(
                  'ChargeMate',
                  style: TextStyle(
                    letterSpacing: 8,
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 3.2,
                left: MediaQuery.of(context).size.width / 4,
                child: const Text(
                  'Sustainable Mobility',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.white54,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, _, __) => IntroductionScreen(
            viewModel: IntroductionViewModel(),
          ),
          transitionsBuilder: (context, animation, _, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
