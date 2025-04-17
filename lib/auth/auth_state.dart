import 'package:d_sdk/user_session/session_context.dart';
import 'package:equatable/equatable.dart';

sealed class AuthState with EquatableMixin {
  const factory AuthState.unauthenticated() = AuthUnAuthenticatedState;

  const factory AuthState.authLoading() = AuthLoadingState;

  const factory AuthState.authenticated(SessionContext session) =
      AuthAuthenticatedState;

  const factory AuthState.authErrorState(
      {Object? error, required String errorMessage}) = AuthErrorState;

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
  final SessionContext session;

  const AuthAuthenticatedState(this.session) : super._();

@override
List<Object> get props => [session];
}

class AuthErrorState extends AuthState {
  final Object? error;
  final String errorMessage;

  const AuthErrorState({this.error, required this.errorMessage}) : super._();

  @override
  List<Object> get props => [errorMessage];
}
