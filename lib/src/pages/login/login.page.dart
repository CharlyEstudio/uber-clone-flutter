import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:uber_clone_flutter/src/components/circle_login.component.dart';
import 'package:uber_clone_flutter/src/components/inputs/email.input.dart';
import 'package:uber_clone_flutter/src/components/inputs/password.input.dart';
import 'package:uber_clone_flutter/src/components/text_in_circle.component.dart';
import 'package:uber_clone_flutter/src/controllers/input_session.controller.dart';
import 'package:uber_clone_flutter/src/utils/my_colors.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        color: Colors.white,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: -80.0, left: -80.0, child: circleLogin()),
            Positioned(
                top: 55.0, left: 25.0, child: textInCircle('LOGIN', 22.0)),
            SingleChildScrollView(
              child: Column(
                children: [
                  _lottieAnimation(),
                  textFieldEmail(_cont),
                  textFieldPassword(_cont),
                  _buttonLogin(),
                  _textDontHaveAccount(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _lottieAnimation() {
    return Container(
      margin: EdgeInsets.only(
          top: 150.0, bottom: MediaQuery.of(context).size.height * 0.17),
      child: Lottie.asset('assets/json/delivery.json',
          width: 350.0, height: 200.0, fit: BoxFit.fill),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _cont.login();
        },
        child: const Text('Ingresar'),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            padding: const EdgeInsets.symmetric(vertical: 15.0)),
      ),
    );
  }

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta?',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        const SizedBox(
          width: 7.0,
        ),
        GestureDetector(
          onTap: () {
            _cont.goToRegisterPage(context);
          },
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: MyColors.primaryColor),
          ),
        )
      ],
    );
  }
}
