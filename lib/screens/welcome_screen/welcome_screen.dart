import 'package:flutter/material.dart';
import 'package:quiz/constants/colors_app.dart';
import 'package:quiz/constants/text_app.dart';
import 'package:quiz/screens/question_screen/question_screen.dart';
import 'package:quiz/screens/welcome_screen/widgets/custom_text_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController _headerFadeController;
  late AnimationController _headerTextController;
  late AnimationController _discriptionTextController;
  late AnimationController _buttonController;

  late Animation<double> _headerFadeAnimation;
  late Animation<double> _headerFontSizeAnimation;
  late Animation<Alignment> _headerAlignmentAnimation;
  late Animation<double> _discriptionFadeAnimation;
  late Animation<double> _buttonFadeAnimation;

  @override
  void initState() {
    super.initState();

    _headerFadeController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _headerFadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _headerFadeController, curve: Curves.easeIn),
    );

    _headerFadeController.forward();

    _headerTextController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _headerFontSizeAnimation = Tween<double>(begin: 40, end: 24).animate(
      CurvedAnimation(parent: _headerTextController, curve: Curves.easeInOut),
    );

    _headerAlignmentAnimation = AlignmentTween(
      begin: Alignment.center,
      end: Alignment.topCenter,
    ).animate(
      CurvedAnimation(parent: _headerTextController, curve: Curves.easeInOut),
    );

    _discriptionTextController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _discriptionFadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _discriptionTextController, curve: Curves.easeIn),
    );

    _buttonController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _buttonFadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _buttonController, curve: Curves.easeIn));

    Future.delayed(const Duration(seconds: 1), () {
      _headerTextController.forward();
      Future.delayed(const Duration(seconds: 1), () {
        _discriptionTextController.forward();
        Future.delayed(const Duration(seconds: 1), () {
          _buttonController.forward();
        });
      });
    });
  }

  @override
  void dispose() {
    _headerFadeController.dispose();
    _headerTextController.dispose();
    _discriptionTextController.dispose();
    super.dispose();
  }

  void startAction() =>
      Navigator.of(context).pushNamed(QuestionScreen.routeName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedBuilder(
              animation: Listenable.merge([
                _headerFadeController,
                _headerTextController,
              ]),
              builder: (context, widget) {
                return Align(
                  alignment: _headerAlignmentAnimation.value,
                  child: Opacity(
                    opacity: _headerFadeAnimation.value,
                    child: Text(
                      TextApp.header,
                      style: TextStyle(
                        fontSize: _headerFontSizeAnimation.value,
                        color: ColorsApp.headerTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
            FadeTransition(
              opacity: _discriptionFadeAnimation,
              child: Text(
                TextApp.discription,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: ColorsApp.basikTextColor),
              ),
            ),

            FadeTransition(
              opacity: _buttonFadeAnimation,
              child: CustomTextButton(
                onPressed: startAction,
                name: TextApp.letsGo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
