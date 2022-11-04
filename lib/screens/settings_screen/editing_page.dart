// ignore_for_file: unrelated_type_equality_checks

import 'dart:io' show File;

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rick_and_morty/data/api/google_api.dart';
import 'package:rick_and_morty/data/repositories/user_repository.dart';
import 'package:rick_and_morty/screens/settings_screen/routes/router.gr.dart';

import '../../data/models/user.dart';

class EditPage extends StatefulWidget {
  final GoogleSignInAccount google;
  const EditPage({
    Key? key,
    required this.google,
  }) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? imageFile;
  File? _image;
  @override
  Widget build(BuildContext context) {
    final photo = widget.google.photoUrl;
    late User user = UserRepo.getUser();
    return Scaffold(
      appBar: AppBar(
          iconTheme: Theme.of(context).primaryIconTheme,
          backgroundColor: Colors.transparent,
          primary: true,
          elevation: 0,
          centerTitle: false,
          title: Row(
            children: [
              Text('Редактировать профиль',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color))
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
                child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              backgroundImage: CachedNetworkImageProvider(photo!),
              radius: 100,
            )),
            const SizedBox(
              height: 20,
            ),
            const Center(),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Text(
                  'Профиль',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () async {
                await context.router.push(const ChangeRoute());
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Изменить ФИО',
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color),
                      ),
                      Text('${user.name} ${user.lastName}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                await context.router.push(const LoginRoute());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Логин',
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color),
                      ),
                      Text(user.login,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 220,
                  child: ElevatedButton.icon(
                      onPressed: () async {
                        await GoogleSignInApi.logOut();
                        context.router.push(const SignInScreen());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          elevation: 0.5),
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                      label: Text(
                        'Выход с приложении',
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
