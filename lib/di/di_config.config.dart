// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../core/auth/auth.dart' as _i7;
import '../core/auth/auth_bloc.dart' as _i8;
import '../core/network/http_client.dart' as _i6;
import '../data/database/database.dart' as _i9;
import '../data/datasource/remote_datasource.dart' as _i10;
import '../screens/news/news_bloc.dart' as _i13;
import '../screens/news/repository.dart' as _i11;
import '../screens/sign_in/sign_in_form/sign_in_form_bloc.dart' as _i12;
import 'app_module.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.FirebaseAuth>(() => appModule.firebase());
    gh.lazySingleton<_i4.FirebaseFirestore>(() => appModule.firebaseFirestore);
    gh.lazySingleton<_i5.GoogleSignIn>(() => appModule.googleSignIn);
    gh.factory<_i6.HttpClient>(() => _i6.HttpClient());
    gh.lazySingleton<_i7.Auth>(() => _i7.AuthImpl(
          gh<_i5.GoogleSignIn>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(gh<_i7.Auth>()));
    gh.lazySingleton<_i9.Database>(
        () => _i9.FirestoreDatabase(gh<_i4.FirebaseFirestore>()));
    gh.lazySingleton<_i10.RemoteDatasource>(() => _i10.RemoteDatasourceImpl(
          gh<_i9.Database>(),
          gh<_i6.HttpClient>(),
        ));
    gh.lazySingleton<_i11.Repository>(
        () => _i11.Repository(gh<_i10.RemoteDatasource>()));
    gh.factory<_i12.SignInFormBloc>(() => _i12.SignInFormBloc(gh<_i7.Auth>()));
    gh.factory<_i13.NewsBloc>(() => _i13.NewsBloc(gh<_i11.Repository>()));
    return this;
  }
}

class _$AppModule extends _i14.AppModule {}
