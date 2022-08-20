import 'package:flutter/material.dart';
import 'package:ttt/screen/create_room_screen.dart';
import 'package:ttt/screen/join_room_screen.dart';
import 'package:ttt/screen/main_menu_screen.dart';
import 'package:ttt/utility/colours.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        mainmenuscreen.routeName: (context) => const mainmenuscreen(),
        joinroomscreen.routeName: (context) => const joinroomscreen(),
        createroomscreen.routeName: (context) => const createroomscreen(),
      },
      initialRoute: mainmenuscreen.routeName,
    );
  }
}
