import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/home.dart';
import 'package:provider/provider.dart';

import 'constants/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'ToDo App',
    //   home: Home(),
    // );
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
        builder: (
            context,
            ModelTheme themeNotifier,
            child,
            ) {
          return MaterialApp(
            theme: themeNotifier.isDark
                ? ThemeData(
              brightness: Brightness.dark,
            )
                : ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.black,
            ),
            debugShowCheckedModeBanner: false,
            home: Home(),
          );
        },
      ),
    );
  }
}
