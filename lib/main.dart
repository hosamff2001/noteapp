import 'package:flutter/material.dart';
import 'package:noteapp/core/utliz/routers.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
       debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
    );
  }
}