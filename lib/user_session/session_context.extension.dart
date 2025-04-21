import 'package:d_sdk/user_session/session_context.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

extension SessionContextExtension on SessionContext {
  TokenPair? getTokenPair() {
    if (accessToken.isNotEmpty && refreshToken.isNotEmpty) {
      return (accessToken: accessToken, refreshToken: refreshToken);
    }

    return null;
  }

  bool get isAccessTokenValid {
    final tokenPair = getTokenPair();
    if (tokenPair == null) {
      return false;
    }

    final decodedJwt = JWT.decode(tokenPair.accessToken);
    final expirationDateTime =
        DateTime.fromMillisecondsSinceEpoch(decodedJwt.payload['exp'] * 1000);

    return DateTime.now()
        .add(const Duration(milliseconds: 1000)) // Safety margin
        .isBefore(expirationDateTime);
  }
}

String sanitizeBaseUrl(String url) {
  final uri = Uri.parse(url);
  return uri.host.replaceAll('.', '_') + (uri.hasPort ? '_${uri.port}' : '');
}
