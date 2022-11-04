import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rick_and_morty/screens/character_screen/character_screen.dart';
import 'package:rick_and_morty/screens/episode_screen/episode_screen.dart';

import '../location_screen/location_screen.dart';
import '../settings_screen/settings_screen.dart';

class MainScreen extends StatefulWidget {
  final GoogleSignInAccount user;
  const MainScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    List pageList = [
      const CharacterScreen(),
      const LocationScreen(),
      const EpisodeScreen(),
       SettingsScreen(google: widget.user,),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        selectedItemColor: Theme.of(context).iconTheme.color,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/characters_icon.png'),
            activeIcon: Image.asset(
              'assets/icons/characters_icon.png',
              color: Theme.of(context).iconTheme.color,
            ),
            label: 'Персонажи',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/location_icon.png'),
            activeIcon: Image.asset(
              'assets/icons/location_icon.png',
              color: Theme.of(context).iconTheme.color,
            ),
            label: 'Локации',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/episode_icon.png'),
            activeIcon: Image.asset(
              'assets/icons/episode_icon.png',
              color: Theme.of(context).iconTheme.color,
            ),
            label: 'Эпизоды',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/settings_icon.png'),
            label: 'Настройки',
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: Image.asset(
              'assets/icons/settings_icon.png',
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (x) {
          setState(() {
            _selectedIndex = x;
          });
        },
      ),
      body: pageList[_selectedIndex],
    );
  }
}
