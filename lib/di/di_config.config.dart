// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../core/auth/auth.dart' as _i8;
import '../core/auth/auth_bloc.dart' as _i9;
import '../core/network/http_client.dart' as _i7;
import '../data/database/database.dart' as _i10;
import '../data/datasource/remote_datasource.dart' as _i11;
import '../screens/details/details_screen_bloc.dart' as _i3;
import '../screens/news/news_bloc.dart' as _i14;
import '../screens/news/repository.dart' as _i12;
import '../screens/sign_in/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'app_module.dart' as _i15;

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
    gh.factory<_i3.DetailsScreenBloc>(() => _i3.DetailsScreenBloc());
    gh.lazySingleton<_i4.FirebaseAuth>(() => appModule.firebase());
    gh.lazySingleton<_i5.FirebaseFirestore>(() => appModule.firebaseFirestore);
    gh.lazySingleton<_i6.GoogleSignIn>(() => appModule.googleSignIn);
    gh.factory<_i7.HttpClient>(() => _i7.HttpClient());
    gh.lazySingleton<_i8.Auth>(() => _i8.AuthImpl(
          gh<_i6.GoogleSignIn>(),
          gh<_i4.FirebaseAuth>(),
        ));
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i8.Auth>()));
    gh.lazySingleton<_i10.Database>(() => _i10.FirestoreDatabase(
          gh<_i8.Auth>(),
          gh<_i5.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i11.RemoteDatasource>(() => _i11.RemoteDatasourceImpl(
          gh<_i10.Database>(),
          gh<_i7.HttpClient>(),
        ));
    gh.lazySingleton<_i12.Repository>(
        () => _i12.Repository(gh<_i11.RemoteDatasource>()));
    gh.factory<_i13.SignInFormBloc>(() => _i13.SignInFormBloc(gh<_i8.Auth>()));
    gh.factory<_i14.NewsBloc>(() => _i14.NewsBloc(gh<_i12.Repository>()));
    return this;
  }
}

class _$AppModule extends _i15.AppModule {}
