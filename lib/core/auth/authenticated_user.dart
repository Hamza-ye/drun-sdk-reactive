import 'package:d_sdk/database/app_database.dart';
import 'package:equatable/equatable.dart';

class AuthState with EquatableMixin {
  final User? user;
  final bool loggedIn;
  final String? activeServerUrl;

  const AuthState({
    this.user,
    this.loggedIn = false,
    this.activeServerUrl,
  });

  AuthState copyWith({
    User? user,
    bool? loggedIn,
    String? activeServerUrl,
  }) {
    return AuthState(
        loggedIn: loggedIn ?? this.loggedIn,
        user: user ?? this.user,
        activeServerUrl: activeServerUrl ?? this.activeServerUrl);
  }

  @override
  List<Object?> get props => [loggedIn, user, activeServerUrl];
}
