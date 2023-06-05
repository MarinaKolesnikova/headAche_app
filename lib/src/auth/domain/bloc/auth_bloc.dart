import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:migr_proj/config/modules/injection_config.dart';
import 'package:migr_proj/src/auth/data/storages/token_storage.dart';
import 'package:migr_proj/src/auth/data/services/auth_service.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';
import 'package:migr_proj/src/shared/interfaces/i_bloc.dart';

export './events/all.dart';
export 'package:provider/src/provider.dart';

part 'auth_bloc.freezed.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends IBloc<AuthState, IBlocEvent<AuthState>> {
  AuthBloc(
    this.tokenStorage,
    this.authService,
  ) : super(AuthState.initial());

  factory AuthBloc.byGetIt({GetIt? testGeIt}) {
    return AuthBloc(
      (testGeIt ?? getIt)<TokenStorage>(),
      (testGeIt ?? getIt)<AuthService>(),
    );
  }
  final TokenStorage tokenStorage;
  final AuthService authService;
}
