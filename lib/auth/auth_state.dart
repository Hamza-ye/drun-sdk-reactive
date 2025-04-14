import 'package:d_sdk/auth/authenticated_user_detail.dart';
import 'package:d_sdk/auth/user_detail.dart';
import 'package:equatable/equatable.dart';

sealed class AuthState with EquatableMixin {
  UserDetail? get user => null;

  const factory AuthState.unauthenticated() = AuthUnAuthenticatedState;

  const factory AuthState.authLoading() = AuthLoadingState;

  const factory AuthState.authenticated(AuthUserData user) =
      AuthAuthenticatedState;

  const factory AuthState.authErrorState(String errorMessage) = AuthErrorState;

  const AuthState._();

  @override
  List<Object?> get props => [];
}

class AuthUnAuthenticatedState extends AuthState {
  const AuthUnAuthenticatedState() : super._();
}

class AuthLoadingState extends AuthState {
  const AuthLoadingState() : super._();
}

class AuthAuthenticatedState extends AuthState {
  final AuthUserData user;

  const AuthAuthenticatedState(this.user) : super._();

  @override
  List<Object> get props => [user];
}

class AuthErrorState extends AuthState {
  final String errorMessage;

  const AuthErrorState(this.errorMessage) : super._();

  @override
  List<Object> get props => [errorMessage];
}
