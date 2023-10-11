import 'package:flutter_assignment/domain/result/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/auth/auth.dart';
import 'package:flutter_assignment/core/failures/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final Auth _auth;

  SignInFormBloc(this._auth) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await _mapEventToState(event, emit);
    });
  }

  Future<void> _mapEventToState(SignInFormEvent event, Emitter<SignInFormState> emit) async {

    await event.map(
      signInWithGooglePressed: (e) async {
        emit(state.copyWith(isSubmitting: true));
        final result = await _auth.signInWithGoogle();
        emit(state.copyWith(isSubmitting: false, authStatus: result));
      },
    );
  }
}
