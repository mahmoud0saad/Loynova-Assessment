import 'package:loynova_app/core/enums/request_state.dart';

extension RequestStateExtension on RequestState {
  bool get isLoading => this == RequestState.loading;
  bool get isSuccess => this == RequestState.success;
  bool get isError => this == RequestState.error;
  bool get isInitial => this == RequestState.initial;
}
