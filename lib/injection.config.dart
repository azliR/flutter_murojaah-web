// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:just_audio/just_audio.dart' as _i3;
import 'package:murojaah_web/app/module/firebase_injectable_module.dart'
    as _i14;
import 'package:murojaah_web/app/module/local_injectable_module.dart' as _i15;
import 'package:murojaah_web/auth/cubit/auth_cubit.dart' as _i12;
import 'package:murojaah_web/auth/repository/auth_repository.dart' as _i9;
import 'package:murojaah_web/listen/cubit/listen_cubit.dart' as _i10;
import 'package:murojaah_web/listen/repository/listen_repository.dart' as _i7;
import 'package:murojaah_web/recite/cubit/recite_cubit.dart' as _i13;
import 'package:murojaah_web/recite/repository/recite_repository.dart' as _i11;
import 'package:record/record.dart' as _i8;

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
    final localInjectableModule = _$LocalInjectableModule();
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.AudioPlayer>(() => localInjectableModule.audioPlayer);
    gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth,
    );
    gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore,
    );
    gh.lazySingleton<_i6.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage,
    );
    gh.lazySingleton<_i7.ListenRepository>(
      () => _i7.ListenRepository(gh<_i3.AudioPlayer>()),
    );
    gh.lazySingleton<_i8.Record>(() => localInjectableModule.record);
    gh.lazySingleton<_i9.AuthRepository>(
      () => _i9.AuthRepository(gh<_i4.FirebaseAuth>()),
    );
    gh.factory<_i10.ListenCubit>(
      () => _i10.ListenCubit(gh<_i7.ListenRepository>()),
    );
    gh.lazySingleton<_i11.ReciteRepository>(
      () => _i11.ReciteRepository(
        gh<_i6.FirebaseStorage>(),
        gh<_i8.Record>(),
        gh<_i3.AudioPlayer>(),
      ),
    );
    gh.factory<_i12.AuthCubit>(() => _i12.AuthCubit(gh<_i9.AuthRepository>()));
    gh.factory<_i13.ReciteCubit>(
      () => _i13.ReciteCubit(gh<_i11.ReciteRepository>()),
    );
    return this;
  }
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}

class _$LocalInjectableModule extends _i15.LocalInjectableModule {}
