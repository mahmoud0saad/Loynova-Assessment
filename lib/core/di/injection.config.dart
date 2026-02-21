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

import '../../features/_shared/app_configurations/data/datasources/app_configurations_datasource_impl.dart'
    as _i816;
import '../../features/_shared/app_configurations/data/datasources/base_app_configurations_datasource.dart'
    as _i994;
import '../../features/_shared/app_configurations/data/repositories/app_configurations_repository_impl.dart'
    as _i533;
import '../../features/_shared/app_configurations/domain/repositories/base_app_configurations_repository.dart'
    as _i868;
import '../../features/_shared/app_configurations/presentation/bloc/app_configuration_bloc.dart'
    as _i154;
import '../../features/wallet/data/datasources/base_wallet_datasource.dart'
    as _i814;
import '../../features/wallet/data/datasources/mock_wallet_datasource.dart'
    as _i715;
import '../../features/wallet/data/repositories/wallet_repository_impl.dart'
    as _i690;
import '../../features/wallet/domain/repositories/base_wallet_repository.dart'
    as _i190;
import '../../features/wallet/domain/usecase/get_balance_usecase.dart' as _i778;
import '../../features/wallet/domain/usecase/get_transactions_usecase.dart'
    as _i294;
import '../../features/wallet/domain/usecase/transfer_points_usecase.dart'
    as _i323;
import '../../features/wallet/presentation/transfer_points/bloc/transfer_points_bloc.dart'
    as _i212;
import '../../features/wallet/presentation/wallet_screen/bloc/wallet_bloc.dart'
    as _i187;
import '../helpers/app_debuger.dart' as _i132;
import '../network/dio_helper.dart' as _i172;
import '../network/network_interface.dart' as _i490;
import '../network/token_handler.dart' as _i496;
import '../router/router.dart' as _i285;
import '../storage/secure_storage.dart' as _i619;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i132.AppDebuger>(() => _i132.AppDebuger());
    gh.singleton<_i285.AppRouter>(() => _i285.AppRouter());
    gh.singleton<_i619.SecureStorage>(() => _i619.SecureStorage());
    gh.factory<_i154.AppConfigurationBloc>(
      () => _i154.AppConfigurationBloc(gh<_i619.SecureStorage>()),
    );
    gh.factory<_i814.BaseWalletDataSource>(() => _i715.MockWalletDataSource());
    gh.lazySingleton<_i490.BaseNetwork>(() => _i172.DioHelper());
    gh.singleton<_i496.TokenHandler>(
      () => _i496.TokenHandler(gh<_i619.SecureStorage>()),
    );
    gh.factory<_i190.BaseWalletRepository>(
      () => _i690.WalletRepositoryImpl(gh<_i814.BaseWalletDataSource>()),
    );
    gh.factory<_i778.GetBalanceUsecase>(
      () => _i778.GetBalanceUsecase(gh<_i190.BaseWalletRepository>()),
    );
    gh.factory<_i294.GetTransactionsUsecase>(
      () => _i294.GetTransactionsUsecase(gh<_i190.BaseWalletRepository>()),
    );
    gh.factory<_i323.TransferPointsUsecase>(
      () => _i323.TransferPointsUsecase(gh<_i190.BaseWalletRepository>()),
    );
    gh.factory<_i994.BaseAppConfigurationsDataSource>(
      () => _i816.AppConfigurationsDataSourceImpl(gh<_i490.BaseNetwork>()),
    );
    gh.factory<_i212.TransferPointsBloc>(
      () => _i212.TransferPointsBloc(gh<_i323.TransferPointsUsecase>()),
    );
    gh.factory<_i187.WalletBloc>(
      () => _i187.WalletBloc(
        gh<_i778.GetBalanceUsecase>(),
        gh<_i294.GetTransactionsUsecase>(),
      ),
    );
    gh.factory<_i868.BaseAppConfigurationsRepository>(
      () => _i533.AppConfigurationsRepositoryImpl(
        gh<_i994.BaseAppConfigurationsDataSource>(),
      ),
    );
    return this;
  }
}
