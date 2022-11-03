// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/screens/settings_screen/routes/router.gr.dart';

import '../../data/api/google_api.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        primary: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              'Rick and Morty',
              style: GoogleFonts.iceberg(fontSize: 26, color: Colors.teal),
            ),
            SizedBox(
                height: 200,
                child: Image.asset(
                  'assets/icons/app_icon.png',
                )),
            Text(
              'Добро пожаловать!\n Welcome!',
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.iceberg(fontSize: 21, color: Colors.greenAccent),
            ),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  signIn();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    minimumSize: const Size(450, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.white70,
                  size: 20,
                ),
                label: Text(
                  'Вход с помощью Google',
                  style: GoogleFonts.alice(
                      color: Theme.of(context).textTheme.bodyMedium!.color),
                )),
          ]),
        ),
      ),
    );
  }

  Future signIn() async {
    final user = await GoogleSignInApi.logIn();
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('You can\'t sign in')));
    } else {
      context.router.push(MainScreen(user: user));
    }
  }
}
