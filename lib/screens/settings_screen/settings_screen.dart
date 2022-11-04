import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rick_and_morty/data/repositories/user_repository.dart';
import 'package:rick_and_morty/logic/provider/theme_provider.dart';
import 'package:rick_and_morty/screens/settings_screen/routes/router.gr.dart';

import '../../data/models/user.dart';

class SettingsScreen extends StatefulWidget {
  final GoogleSignInAccount google;
  const SettingsScreen({
    Key? key,
    required this.google,
  }) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedTheme = 2;

  @override
  Widget build(BuildContext context) {
    final photoUrl = widget.google.photoUrl;
    late User user = UserRepo.getUser();
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          backgroundColor: Colors.transparent,
          primary: true,
          elevation: 0,
          title: Row(
            children: [
              Text(
                'Настройки',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.bodyMedium?.color),
              ),
            ],
          )),
      body: ListView(
        padding: const EdgeInsets.all(6),
        children: [
          Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: CachedNetworkImageProvider(
                      photoUrl!,
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${user.name} ${user.lastName}',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(widget.google.email),
                      Text(
                        user.login,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 335,
                height: 40,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      side: const BorderSide(
                        color: Color(0xff22A2BD),
                      )),
                  onPressed: () async {
                    await context.router.push(EditRoute(google: widget.google));
                    setState(() {});
                  },
                  child: const Text(
                    'Редактировать',
                    style: TextStyle(color: Color(0xff22A2BD)),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Divider(
                color: Color.fromARGB(255, 179, 178, 178),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'ВНЕШНИЙ ВИД',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            context.router.pop(true);
                          },
                          child: Text(
                            'Отмена',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.color),
                          ),
                        ),
                      ],
                      title: Text(
                        'Темная тема',
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color),
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                      content: SizedBox(
                        height: 192,
                        width: 550,
                        child: Column(children: [
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _selectedTheme,
                                  onChanged: (selectedTheme) {
                                    _selectedTheme = selectedTheme ?? 1;

                                    context.read<ThemeProvider>().setTheme(
                                        isDarkSet: 'light', context: context);
                                    setState(() {});
                                  }),
                              Text(
                                'Выключенна',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 2,
                                  groupValue: _selectedTheme,
                                  onChanged: (selectedTheme) {
                                    _selectedTheme = selectedTheme ?? 2;

                                    context.read<ThemeProvider>().setTheme(
                                        isDarkSet: 'dark', context: context);
                                    setState(() {});
                                  }),
                              Text(
                                'Включенна',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 3,
                                  groupValue: _selectedTheme,
                                  onChanged: (selectedTheme) {
                                    _selectedTheme = selectedTheme ?? 3;

                                    context.read<ThemeProvider>().setTheme(
                                        isDarkSet: 'system', context: context);
                                    setState(() {});
                                  }),
                              Text(
                                'Системнная',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 4,
                                  groupValue: _selectedTheme,
                                  onChanged: (selectedTheme) {
                                    _selectedTheme = selectedTheme ?? 4;

                                    context.read<ThemeProvider>().setTheme(
                                        isDarkSet: '', context: context);
                                    setState(() {});
                                  }),
                              Text(
                                'В режиме энергосбережения',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color),
                              )
                            ],
                          ),
                        ]),
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.palette_outlined,
                        size: 36,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                      Column(
                        children: [
                          Text(
                            'Темная тема',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.color),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 180,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 36,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                children: const [
                  Text(
                    'О приложении',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления  концентрирован-ной темной материи.',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                    fontSize: 13),
              ),
              const SizedBox(
                height: 36,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                children: const [
                  Text(
                    'Версия приложения',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    'Rick & Morty v1.0.0',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium?.color),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
