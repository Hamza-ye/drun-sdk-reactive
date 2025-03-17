import 'package:equatable/equatable.dart';

class AuthState with EquatableMixin {
  final String? username;
  final String? activeServerUrl;
  final bool isLoggedIn;

  AuthState({
    this.username,
    this.activeServerUrl,
    this.isLoggedIn = false,
  });

  AuthState copyWith({
    String? username,
    String? activeServerUrl,
    bool? isLoggedIn,
  }) {
    return AuthState(
      username: username ?? this.username,
      activeServerUrl: activeServerUrl ?? this.activeServerUrl,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }

  @override
  List<Object?> get props => [username, activeServerUrl, isLoggedIn];
}
