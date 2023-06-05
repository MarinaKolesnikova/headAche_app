import 'package:migr_proj/src/auth/domain/bloc/auth_bloc.dart';
import 'package:migr_proj/src/auth/domain/bloc/events/logout_event.dart';
import 'package:flutter/material.dart';

class Logout {
  static void logoutAction(BuildContext context) {
    context.read<AuthBloc>().add(
          LogoutEvent(
            onLogoutCompleted: () {},
          ),
        );
  }
}
