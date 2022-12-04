import 'package:base_app/base_app.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_login/micro_app_login.dart';
import 'package:micro_core/config.dart';
import 'package:micro_core/micro_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    super.registerRoutes();
    return MaterialApp(
      title: 'Micro Frontends',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: super.generateRoute,
      initialRoute: '/login',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [MicroAppLoginResolver()];
}
