import 'package:migr_proj/src/shared/interfaces/i_bloc_view_model.dart';

abstract class IBlocEvent<State> {
  const IBlocEvent();

  Stream<State> action(covariant IBloc bloc);
}
