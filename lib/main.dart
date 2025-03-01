import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/core/theme/app_theme.dart';
import 'package:tap_invest/di/injectable.dart';
import 'package:tap_invest/presentation/home/bloc/home_bloc.dart';
import 'package:tap_invest/presentation/home/home_screen.dart';
import 'package:tap_invest/presentation/organization_details/bloc/organization_bloc.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HomeBloc>()),
        BlocProvider(create: (_) => getIt<OrganizationBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: HomePage(),
      ),
    );
  }
}
