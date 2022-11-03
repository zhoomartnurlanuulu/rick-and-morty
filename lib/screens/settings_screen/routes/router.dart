import 'package:rick_and_morty/screens/character_screen/character_screen.dart';
import 'package:rick_and_morty/screens/character_screen/widgets/character_listtitle.dart';
import 'package:rick_and_morty/screens/character_screen/widgets/characters_info.dart';
import 'package:rick_and_morty/screens/episode_screen/episode_screen.dart';
import 'package:rick_and_morty/screens/location_screen/location_screen.dart';
import 'package:rick_and_morty/screens/main_screen/main_screen.dart';
import 'package:rick_and_morty/screens/search_screen/widgets/search_page.dart';
import 'package:rick_and_morty/screens/settings_screen/editing_page.dart';
import 'package:rick_and_morty/screens/settings_screen/settings_screen.dart';
import 'package:rick_and_morty/screens/settings_screen/widget/changer_page.dart';
import 'package:rick_and_morty/screens/settings_screen/widget/login_page.dart';
import 'package:rick_and_morty/screens/singin_page/singin_screen.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true, path: '/'),
    AutoRoute(page: MainScreen, path: '/main_screen'),
    AutoRoute(page: EpisodeScreen, path: '/episode-screen'),
    AutoRoute(page: LocationScreen, path: '/location-screen'),
    AutoRoute(page: CharacterScreen, path: '/character-screen'),
    AutoRoute(page: CharacterListTitle, path: '/character-info-page'),
    AutoRoute(page: SettingsScreen, initial: true, path: '/settings-screen'),
    AutoRoute(page: EditPage, path: '/edit-page'),
    AutoRoute(page: SearchPage, path: '/search-page'),
    AutoRoute(
      page: ChangePage,
    ),
    AutoRoute(
      page: LoginPage,
    ),
    AutoRoute(
      page: CharactersDetailPage,
    ),
  ],
)
class $AppRouter {}
