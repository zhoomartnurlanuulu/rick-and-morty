import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/repositories/user_repository.dart';

import '../../../data/models/user.dart';
import 'login_texfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    late User user = UserRepo.getUser();
    return Scaffold(
      appBar: AppBar(
          iconTheme: Theme.of(context).primaryIconTheme,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          title: Text(
            'Логин',
            style:
                TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(
            height: 41,
          ),
          LoginTextField(
              label: 'Логин',
              text: user.login,
              onChanged: (login) => user = user.copy(login: login)),
          const SizedBox(
            height: 601,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      await UserRepo.setUser(user);
                      context.router.pop();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff22A2BD)),
                    child: const Text('Сохранить')),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
