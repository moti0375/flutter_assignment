import 'package:flutter/material.dart';
import 'package:flutter_assignment/core/auth/auth_bloc.dart';
import 'package:flutter_assignment/di/di_config.dart';
import 'package:flutter_assignment/navigation/routes.dart';
import 'package:flutter_assignment/screens/details/details_screen.dart';
import 'package:flutter_assignment/screens/news/news_screen.dart';
import 'package:flutter_assignment/screens/root/root_screen.dart';
import 'package:flutter_assignment/screens/sign_in/sign_in_page.dart';
import 'package:flutter_assignment/screens/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt.get<AuthBloc>()..add(const AuthEvent.authCheckRequested()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: ROOT,
        routes: {
          ROOT: (context) => const RootScreen(),
          DETAILS: (context) =>  DetailsScreen(),
        },
      ),
    );
  }
}
