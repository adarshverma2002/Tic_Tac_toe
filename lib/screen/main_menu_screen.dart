import 'package:flutter/material.dart';
import 'package:ttt/responsive/responsive.dart';
import 'package:ttt/screen/create_room_screen.dart';
import 'package:ttt/screen/join_room_screen.dart';
import 'package:ttt/widgets/custom_button.dart';

class mainmenuscreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const mainmenuscreen({Key? key}) : super(key: key);

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, createroomscreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, joinroomscreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () => createRoom(context),
              text: 'Create Room',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () => joinRoom(context),
              text: 'Join Room',
            )
          ],
        ),
      ),
    );
  }
}
