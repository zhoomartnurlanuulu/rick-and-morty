import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/repositories/user_repository.dart';
import 'package:rick_and_morty/screens/settings_screen/widget/textfiled_widget.dart';

import '../../../data/models/user.dart';

class ChangePage extends StatefulWidget {
  const ChangePage({super.key});

  @override
  State<ChangePage> createState() => _ChangePageState();
}

class _ChangePageState extends State<ChangePage> {
  late User user;

  @override
  void initState() {
    super.initState();

    user = UserRepo.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: Theme.of(context).primaryIconTheme,
          centerTitle: false,
          backgroundColor: Colors.transparent,
          primary: true,
          elevation: 0,
          title: Text('Изменить ФИО',
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium?.color))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 41,
              ),
              TextFieldWidget(
                label: 'Имя',
                text: user.name,
                onChanged: (name) => user = user.copy(name: name),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                  label: 'Фамилия',
                  text: user.lastName,
                  onChanged: (lastName) =>
                      user = user.copy(lastName: lastName)),
            ]),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 350,
            ),
            SizedBox(
              height: 48,
              width: 319,
              child: ElevatedButton(
                  onPressed: () async {
                    await UserRepo.setUser(user);
                    context.router.pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff22A2BD)),
                  child: const Text('Сохранить')),
            )
          ],
        ),
      ),
    );
  }
}
