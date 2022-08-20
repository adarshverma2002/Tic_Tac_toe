import 'package:flutter/material.dart';
import 'package:ttt/responsive/responsive.dart';
import 'package:ttt/widgets/custom_button.dart';
import 'package:ttt/widgets/custom_text.dart';
import 'package:ttt/widgets/custom_textfield.dart';

class joinroomscreen extends StatefulWidget {
  static String routeName = '/join-room';
  const joinroomscreen({Key? key}) : super(key: key);

  @override
  State<joinroomscreen> createState() => _joinroomscreenState();
}

class _joinroomscreenState extends State<joinroomscreen> {
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _gameIdController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customtext(
                  shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
                  text: 'Join Room',
                  fontSize: 70),
              SizedBox(height: size.height * 0.08),
              customtextfield(
                  controller: _nameController, hintText: 'Enter your nickname'),
              SizedBox(height: 20),
              customtextfield(
                  controller: _gameIdController, hintText: 'Enter GAME ID'),
              SizedBox(height: size.height * 0.045),
              CustomButton(onTap: () {}, text: 'Create')
            ],
          ),
        ),
      ),
    );
  }
}
