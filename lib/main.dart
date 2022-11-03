import 'package:provider/provider.dart';
import 'package:rick_and_morty/data/dio/dio_settings.dart';
import 'package:rick_and_morty/data/repositories/user_repository.dart';
import 'package:rick_and_morty/screens/settings_screen/routes/router.gr.dart';
import 'package:rick_and_morty/themes/app_themes.dart';
import 'data/repositories/characters_repository.dart';
import 'logic/characters_bloc/characters_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'logic/provider/theme_provider.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserRepo.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      RepositoryProvider(create: (context) => DioSettings()),
      RepositoryProvider(
        create: (context) => CharactersRepo(
          dio: RepositoryProvider.of<DioSettings>(context).dio,
        ),
      ),
      ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          builder: (context, _) {
            int? currentPage;
            String? name;
            return BlocProvider(
              create: (context) => CharactersBloc(
                  charactersRepo: RepositoryProvider.of<CharactersRepo>(context)
                    ..getCharacters(name: name, currentPage: currentPage)),
              child: MaterialApp.router(
                themeMode: Provider.of<ThemeProvider>(context).themeMode,
                theme: MyThemes.lightTheme,
                darkTheme: MyThemes.darkTheme,
                debugShowCheckedModeBanner: false,
                routerDelegate: appRouter.delegate(),
                routeInformationParser: appRouter.defaultRouteParser(),
              ),
            );
          })
    ]);
  }
}
