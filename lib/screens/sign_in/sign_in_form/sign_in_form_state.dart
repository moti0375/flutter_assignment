part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
   factory SignInFormState(
      {required bool isSubmitting,
        required bool showErrorMessages,
        required bool authSuccess}) = _SignInFormState;
  factory SignInFormState.initial() {
    return  SignInFormState(
    isSubmitting: false,
    showErrorMessages: false,
      authSuccess:  false,
  );
  }
}
