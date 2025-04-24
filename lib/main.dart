import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/blocs/question_cubit/question_cubit.dart';
import 'package:quiz/screens/question_screen/question_screen.dart';
import 'package:quiz/screens/result_screen/result_screen.dart';
import 'package:quiz/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => QuestionCubit()),
      ],
      child: MaterialApp(
        title: 'Quiz',
        debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.routeName,
        routes: {
          QuestionScreen.routeName: (context) => const QuestionScreen(),
          WelcomeScreen.routeName: (context) => const WelcomeScreen(),
          ResultScreen.routeName: (context) => const ResultScreen(),
        },
      ),
    );
  }
}
