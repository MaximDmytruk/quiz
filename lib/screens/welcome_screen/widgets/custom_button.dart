import 'package:flutter/material.dart';
import 'package:quiz/constants/colors_app.dart';

class CustomTextButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String name;

  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.name,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.2,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(widget.name, style: TextStyle(fontSize: 20, color: ColorsApp.buttonTextColor)),
      ),
    );
  }
}
