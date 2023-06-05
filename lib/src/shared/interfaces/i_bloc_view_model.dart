export 'i_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class IViewModel<State, Bloc extends BlocBase<State>> {
  const IViewModel();
}