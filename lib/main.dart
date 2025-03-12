import 'package:e_commerce_app/data/local/user_bloc/user_bloc.dart';
import 'package:e_commerce_app/data/local/user_bloc/user_login_bloc.dart';
import 'package:e_commerce_app/data/remote/api_helper.dart';
import 'package:e_commerce_app/data/repositories/app_repositories.dart';
import 'package:e_commerce_app/ui/flash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
      MultiBlocProvider(
        providers : [
          BlocProvider(create: (context) => UserBloc(appRepositories: AppRepositories(apiHelper: ApiHelper())), ),
          BlocProvider(create: (context)=> UserLogInBloc(appRepositories: AppRepositories(apiHelper: ApiHelper())))
        ],child: const MyApp(),
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            primary: Color(0xFF00B2E7),
            secondary: Color(0xFFE064F7),
            tertiary: Color(0xFFFF8D6C)
        ),
      ),
      home: const FlashPage(),
    );
  }
}
