import 'package:flutter/material.dart';
import 'package:flutter_assignment/di/di_config.dart';
import 'package:flutter_assignment/screens/sign_in/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_assignment/screens/sign_in/sign_in_form/signin_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: const SignInForm(),
    );
  }

  static Widget create() {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: const SignInPage(),
    );
  }
}
