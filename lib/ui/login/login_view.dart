import 'package:flutter/material.dart';
import 'package:tripkuy/core/app/app.dart';
import 'package:tripkuy/core/util/util.dart';
import 'package:tripkuy/ui/component.dart';
import 'package:tripkuy/ui/dashboard/view/dashboard.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  onLogin() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      CoreFunction.showToast("Form tidak boleh kosong");
    } else if (emailController.text != Constant.adminEmail) {
      CoreFunction.showToast("Email salah");
    } else if (passwordController.text != Constant.adminPassword) {
      CoreFunction.showToast("Password Salah");
    } else if (emailController.text == Constant.adminEmail &&
        passwordController.text == Constant.adminPassword) {
      pushAndRemoveUntil(Dashboard(), RouterType.material);
    } else {
      CoreFunction.showToast("Uknow Action");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.teal,
      body: Padding(
        padding: Constant.paddingScreen,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Component.textBold("Login to KuyLinary",
                  fontSize: 40, colors: ColorPalette.black),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 10,
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: Component.decorationNoBorder("Email",
                      iconPrefix: Icons.email)),
              const SizedBox(
                height: 20,
              ),
              TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: passwordController,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: Component.decorationNoBorder("Password",
                      iconPrefix: Icons.lock)),
              const SizedBox(
                height: 20,
              ),
              Component.button(
                  label: "Login",
                  onPressed: () {
                    onLogin();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
