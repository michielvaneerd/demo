import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda/core/injections.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:funda/presentation/screens/main/main_screen.dart';
import 'package:funda/presentation/screens/main/main_screen_cubit.dart';

void main() {
  Injections.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funda demo app',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocProvider(
        create: (context) =>
            MainScreenCubit(Injections.houseUseCases)..getHouses(),
        child: const MainScreen(),
      ),
    );
  }
}
