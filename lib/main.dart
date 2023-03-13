import 'package:flutter/material.dart';
import 'package:powershre/screens/home/screen_ruang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          theme: ThemeData(primarySwatch: Colors.lightBlue),
          home: const ScreenRuang(),
        );
      },
    );
  }
}
