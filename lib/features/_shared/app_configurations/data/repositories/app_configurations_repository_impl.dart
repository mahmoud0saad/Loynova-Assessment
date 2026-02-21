import 'package:injectable/injectable.dart';

import '../../domain/repositories/base_app_configurations_repository.dart';
import '../datasources/base_app_configurations_datasource.dart';

@Injectable(as: BaseAppConfigurationsRepository)
class AppConfigurationsRepositoryImpl
    implements BaseAppConfigurationsRepository {
  AppConfigurationsRepositoryImpl(this._dataSource);
  final BaseAppConfigurationsDataSource _dataSource;
 
}
