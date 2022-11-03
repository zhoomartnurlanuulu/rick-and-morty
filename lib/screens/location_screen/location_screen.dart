import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            primary: true,
            centerTitle: false,
            title: Row(
              children: [
                Text(
                  'Локации',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color),
                )
              ],
            )),
        body: Center(
          child: Column(children: [
            Image.asset('assets/images/nothing.png'),
            const Text(
              'Coming Soon',
              style: TextStyle(color: Colors.grey),
            )
          ]),
        ));
  }
}
