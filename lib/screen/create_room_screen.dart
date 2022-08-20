import 'package:flutter/material.dart';
import 'package:ttt/resources/socket_methods.dart';
import 'package:ttt/responsive/responsive.dart';
import 'package:ttt/widgets/custom_button.dart';
import 'package:ttt/widgets/custom_text.dart';
import 'package:ttt/widgets/custom_textfield.dart';

class createroomscreen extends StatefulWidget {
  static String routeName = '/create-room';
  const createroomscreen({Key? key}) : super(key: key);

  @override
  State<createroomscreen> createState() => _createroomscreenState();
}

class _createroomscreenState extends State<createroomscreen> {
  final TextEditingController _nameController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void dispose() {
    super.dispose();
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
                  text: 'Create Room',
                  fontSize: 70),
              SizedBox(height: size.height * 0.08),
              customtextfield(
                  controller: _nameController, hintText: 'Enter your name'),
              SizedBox(height: size.height * 0.045),
              CustomButton(onTap: () => _socketMethods.createRoom(_nameController.text), text: 'Create')
            ],
          ),
        ),
      ),
    );
  }
}
