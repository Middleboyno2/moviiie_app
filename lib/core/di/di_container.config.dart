// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:moviiie/core/dio/dio_module.dart' as _i770;
import 'package:moviiie/data/remote/movie_api.dart' as _i798;
import 'package:moviiie/data/repositories/movie_repository_impl.dart' as _i651;
import 'package:moviiie/data/repositories/token_repository_impl.dart' as _i134;
import 'package:moviiie/domain/repositories/movie_reponsitory.dart' as _i206;
import 'package:moviiie/domain/repositories/token_repository.dart' as _i958;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.singleton<_i361.Dio>(
      () => dioModule.getUnauthorizedDioClient(),
      instanceName: 'Unauthorized',
    );
    gh.singleton<_i958.TokenRepository>(() => _i134.TokenRepositoryImpl());
    gh.singleton<_i361.Dio>(
        () => dioModule.getAuthorizedDioClient(gh<_i958.TokenRepository>()));
    gh.singleton<_i798.MovieApi>(() => _i798.MovieApi(gh<_i361.Dio>()));
    gh.singleton<_i206.MovieRepository>(
        () => _i651.MovieRepositoryImpl(gh<_i798.MovieApi>()));
    return this;
  }
}

class _$DioModule extends _i770.DioModule {}
