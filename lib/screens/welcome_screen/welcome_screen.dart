import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _mainController;

  late Animation<double> _fadeAnimation;
  late Animation<double> _fontSizeAnimation;
  late Animation<Alignment> _alignmentAnimation;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _fadeController, curve: Curves.easeIn));

    _fadeController.forward();

    _mainController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _fontSizeAnimation = Tween<double>(begin: 40, end: 24).animate(
      CurvedAnimation(parent: _mainController, curve: Curves.easeInOut),
    );

    _alignmentAnimation = AlignmentTween(
      begin: Alignment.center,
      end: Alignment.topCenter,
    ).animate(
      CurvedAnimation(parent: _mainController, curve: Curves.easeInOut),
    );

    Future.delayed(const Duration(seconds: 1), () {
      _mainController.forward();
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _mainController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBuilder(
        animation: Listenable.merge([_fadeController, _mainController]),
        builder: (context, widget) {
          return Align(
            alignment: _alignmentAnimation.value,
            child: Opacity(
              opacity: _fadeAnimation.value,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  'Hello in Quiz',
                  style: TextStyle(
                    fontSize: _fontSizeAnimation.value,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
