import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final _googleSingIn = GoogleSignIn();
  static Future<GoogleSignInAccount?> logIn() async =>
      await _googleSingIn.signIn();
  static Future logOut() => _googleSingIn.disconnect();
}
