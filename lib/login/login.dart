import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/login/login_controller.dart';
import 'package:pdv_sistem/login/widget/email_login_widget.dart';
import 'package:pdv_sistem/login/widget/login_button_widget.dart';
import 'package:pdv_sistem/login/widget/password_widget.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Login")),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
        child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(500, 0, 500, 0),
      children: const [
        Divider(),
        InputEmail(),
        Divider(),
        InputPassword(),
        Divider(),
        LoginButton(),
      ],
    ));
  }
}
