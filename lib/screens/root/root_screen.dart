import 'package:flutter/material.dart';
import 'package:flutter_assignment/core/auth/auth_bloc.dart';
import 'package:flutter_assignment/screens/news/news_screen.dart';
import 'package:flutter_assignment/screens/sign_in/sign_in_page.dart';
import 'package:flutter_assignment/screens/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: _mapStateToChild(state),
      ),
    );
  }

  Widget _mapStateToChild(AuthState state) {
    print("[RootPage] - _mapStateToChild - $state");
    return state.when(
        initial: () => const SplashScreen(),
        unauthenticated: () =>  SignInPage.create(),
        authenticated: () => NewsScreen.create());
  }
}
