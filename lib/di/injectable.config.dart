// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tap_invest/core/network/api_service.dart' as _i778;
import 'package:tap_invest/presentation/home/bloc/home_bloc.dart' as _i998;
import 'package:tap_invest/presentation/home/domain/repositories/home_repository.dart'
    as _i150;
import 'package:tap_invest/presentation/home/domain/repositories/home_repository_impl.dart'
    as _i523;

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
    gh.lazySingleton<_i778.ApiService>(() => _i778.ApiService());
    gh.lazySingleton<_i150.HomeRepository>(
        () => _i523.HomeRepositoryImpl(gh<_i778.ApiService>()));
    gh.factory<_i998.HomeBloc>(
        () => _i998.HomeBloc(gh<_i150.HomeRepository>()));
    return this;
  }
}
