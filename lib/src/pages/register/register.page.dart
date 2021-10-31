import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:uber_clone_flutter/src/components/circle_login.component.dart';
import 'package:uber_clone_flutter/src/components/inputs/confirm_password.input.dart';
import 'package:uber_clone_flutter/src/components/inputs/email.input.dart';
import 'package:uber_clone_flutter/src/components/inputs/name.input.dart';
import 'package:uber_clone_flutter/src/components/inputs/password.input.dart';
import 'package:uber_clone_flutter/src/components/inputs/last_name.input.dart';
import 'package:uber_clone_flutter/src/components/inputs/telephone.input.dart';
import 'package:uber_clone_flutter/src/components/text_in_circle.component.dart';
import 'package:uber_clone_flutter/src/controllers/input_session.controller.dart';
import 'package:uber_clone_flutter/src/utils/my_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final InputsSessionController _cont = InputsSessionController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _cont.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(top: -80.0, left: -80.0, child: circleLogin()),
                Positioned(
                    top: 65.0,
                    left: 27.0,
                    child: textInCircle('REGISTRO', 20.0)),
                Positioned(top: 51.0, left: -5.0, child: _iconBack()),
                Container(
                  margin: const EdgeInsets.only(top: 150.0),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _imageUser(),
                        const SizedBox(
                          height: 30.0,
                        ),
                        textFieldEmail(_cont),
                        textFieldName(_cont),
                        textFieldLastName(_cont),
                        textFieldTelephone(_cont),
                        textFieldPassword(_cont),
                        textFieldConfirmPassword(_cont),
                        _buttonRegister(),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }

  Widget _iconBack() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back_ios),
      color: Colors.white,
    );
  }

  Widget _imageUser() {
    return CircleAvatar(
      backgroundImage: const AssetImage('assets/img/user_profile_2.png'),
      radius: 60.0,
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _cont.register();
        },
        child: const Text('REGISTRARSE'),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            padding: const EdgeInsets.symmetric(vertical: 15.0)),
      ),
    );
  }
}
