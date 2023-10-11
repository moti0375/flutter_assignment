import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_assignment/core/auth/auth.dart';
import 'package:flutter_assignment/domain/user/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {

  final Auth _auth;

  AuthBloc(this._auth) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await _mapEventToState(event, emit);
    });
  }

  Future<void> _mapEventToState(AuthEvent event, Emitter<AuthState> emitter) async {
   await event.map(authCheckRequested: (e) async => _checkAuth(emitter: emitter), signedOut: (e) async => _onSignedOut(emitter: emitter));
  }


  Future<void> _checkAuth({required Emitter emitter}) async {
    AppUser? signeUser = await _auth.getSignedInUser();
    if(signeUser != null){
      emitter(const AuthState.authenticated());
    } else {
      emitter(const AuthState.unauthenticated());
    }
  }

  Future<void> _onSignedOut({required Emitter emitter})  async {
    print("[AuthBloc] - _onSignedOut");
    await _auth.signOut();
    emitter(const AuthState.unauthenticated());
  }
}
