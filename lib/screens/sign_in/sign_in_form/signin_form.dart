import 'package:flutter/material.dart';
import 'package:flutter_assignment/core/auth/auth_bloc.dart';
import 'package:flutter_assignment/screens/sign_in/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        print("[BlocListener] - $state");
        state.authStatus.whenOrNull(success: (success) {
          print("[BlocListener] - authStatus success");
          context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
        });
      },
      child: BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          print("builder: state isSubmitting ${state.isSubmitting}, showErrorMessages: ${state.showErrorMessages}");
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    '📝',
                    style: TextStyle(fontSize: 130),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    // ignore: use_named_constants
                    onPressed: () =>
                        context.read<SignInFormBloc>().add(const SignInFormEvent.signInWithGooglePressed()),
                    child: context.read<SignInFormBloc>().state.isSubmitting
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                      "SIGN IN WITH GOOGLE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
