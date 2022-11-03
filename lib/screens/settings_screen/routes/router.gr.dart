// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:google_sign_in/google_sign_in.dart' as _i15;

import '../../../data/models/characters.dart' as _i16;
import '../../character_screen/character_screen.dart' as _i5;
import '../../character_screen/widgets/character_listtitle.dart' as _i6;
import '../../character_screen/widgets/characters_info.dart' as _i12;
import '../../episode_screen/episode_screen.dart' as _i3;
import '../../location_screen/location_screen.dart' as _i4;
import '../../main_screen/main_screen.dart' as _i2;
import '../../search_screen/widgets/search_page.dart' as _i9;
import '../../singin_page/singin_screen.dart' as _i1;
import '../editing_page.dart' as _i8;
import '../settings_screen.dart' as _i7;
import '../widget/changer_page.dart' as _i10;
import '../widget/login_page.dart' as _i11;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SignInScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInScreen(),
      );
    },
    MainScreen.name: (routeData) {
      final args = routeData.argsAs<MainScreenArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.MainScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    EpisodeScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EpisodeScreen(),
      );
    },
    LocationScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LocationScreen(),
      );
    },
    CharacterScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CharacterScreen(),
      );
    },
    CharacterListTitle.name: (routeData) {
      final args = routeData.argsAs<CharacterListTitleArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.CharacterListTitle(
          key: args.key,
          result: args.result,
        ),
      );
    },
    SettingsScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsScreen(),
      );
    },
    EditRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.EditPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SearchPage(),
      );
    },
    ChangeRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ChangePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.LoginPage(),
      );
    },
    CharactersDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CharactersDetailRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.CharactersDetailPage(
          key: args.key,
          result: args.result,
        ),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          SignInScreen.name,
          path: '/',
        ),
        _i13.RouteConfig(
          MainScreen.name,
          path: '/main_screen',
        ),
        _i13.RouteConfig(
          EpisodeScreen.name,
          path: '/episode-screen',
        ),
        _i13.RouteConfig(
          LocationScreen.name,
          path: '/location-screen',
        ),
        _i13.RouteConfig(
          CharacterScreen.name,
          path: '/character-screen',
        ),
        _i13.RouteConfig(
          CharacterListTitle.name,
          path: '/character-info-page',
        ),
        _i13.RouteConfig(
          SettingsScreen.name,
          path: '/settings-screen',
        ),
        _i13.RouteConfig(
          EditRoute.name,
          path: '/edit-page',
        ),
        _i13.RouteConfig(
          SearchRoute.name,
          path: '/search-page',
        ),
        _i13.RouteConfig(
          ChangeRoute.name,
          path: '/change-page',
        ),
        _i13.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i13.RouteConfig(
          CharactersDetailRoute.name,
          path: '/characters-detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.SignInScreen]
class SignInScreen extends _i13.PageRouteInfo<void> {
  const SignInScreen()
      : super(
          SignInScreen.name,
          path: '/',
        );

  static const String name = 'SignInScreen';
}

/// generated route for
/// [_i2.MainScreen]
class MainScreen extends _i13.PageRouteInfo<MainScreenArgs> {
  MainScreen({
    _i14.Key? key,
    required _i15.GoogleSignInAccount user,
  }) : super(
          MainScreen.name,
          path: '/main_screen',
          args: MainScreenArgs(
            key: key,
            user: user,
          ),
        );

  static const String name = 'MainScreen';
}

class MainScreenArgs {
  const MainScreenArgs({
    this.key,
    required this.user,
  });

  final _i14.Key? key;

  final _i15.GoogleSignInAccount user;

  @override
  String toString() {
    return 'MainScreenArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i3.EpisodeScreen]
class EpisodeScreen extends _i13.PageRouteInfo<void> {
  const EpisodeScreen()
      : super(
          EpisodeScreen.name,
          path: '/episode-screen',
        );

  static const String name = 'EpisodeScreen';
}

/// generated route for
/// [_i4.LocationScreen]
class LocationScreen extends _i13.PageRouteInfo<void> {
  const LocationScreen()
      : super(
          LocationScreen.name,
          path: '/location-screen',
        );

  static const String name = 'LocationScreen';
}

/// generated route for
/// [_i5.CharacterScreen]
class CharacterScreen extends _i13.PageRouteInfo<void> {
  const CharacterScreen()
      : super(
          CharacterScreen.name,
          path: '/character-screen',
        );

  static const String name = 'CharacterScreen';
}

/// generated route for
/// [_i6.CharacterListTitle]
class CharacterListTitle extends _i13.PageRouteInfo<CharacterListTitleArgs> {
  CharacterListTitle({
    _i14.Key? key,
    required _i16.Results result,
  }) : super(
          CharacterListTitle.name,
          path: '/character-info-page',
          args: CharacterListTitleArgs(
            key: key,
            result: result,
          ),
        );

  static const String name = 'CharacterListTitle';
}

class CharacterListTitleArgs {
  const CharacterListTitleArgs({
    this.key,
    required this.result,
  });

  final _i14.Key? key;

  final _i16.Results result;

  @override
  String toString() {
    return 'CharacterListTitleArgs{key: $key, result: $result}';
  }
}

/// generated route for
/// [_i7.SettingsScreen]
class SettingsScreen extends _i13.PageRouteInfo<void> {
  const SettingsScreen()
      : super(
          SettingsScreen.name,
          path: '/settings-screen',
        );

  static const String name = 'SettingsScreen';
}

/// generated route for
/// [_i8.EditPage]
class EditRoute extends _i13.PageRouteInfo<void> {
  const EditRoute()
      : super(
          EditRoute.name,
          path: '/edit-page',
        );

  static const String name = 'EditRoute';
}

/// generated route for
/// [_i9.SearchPage]
class SearchRoute extends _i13.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i10.ChangePage]
class ChangeRoute extends _i13.PageRouteInfo<void> {
  const ChangeRoute()
      : super(
          ChangeRoute.name,
          path: '/change-page',
        );

  static const String name = 'ChangeRoute';
}

/// generated route for
/// [_i11.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i12.CharactersDetailPage]
class CharactersDetailRoute
    extends _i13.PageRouteInfo<CharactersDetailRouteArgs> {
  CharactersDetailRoute({
    _i14.Key? key,
    required _i16.Results result,
  }) : super(
          CharactersDetailRoute.name,
          path: '/characters-detail-page',
          args: CharactersDetailRouteArgs(
            key: key,
            result: result,
          ),
        );

  static const String name = 'CharactersDetailRoute';
}

class CharactersDetailRouteArgs {
  const CharactersDetailRouteArgs({
    this.key,
    required this.result,
  });

  final _i14.Key? key;

  final _i16.Results result;

  @override
  String toString() {
    return 'CharactersDetailRouteArgs{key: $key, result: $result}';
  }
}
