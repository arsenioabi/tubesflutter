import 'package:flutter/material.dart';
import 'package:tripkuy/core/app/app.dart';
import 'package:tripkuy/core/util/util.dart';
import 'package:tripkuy/ui/home/home.dart';

import '../component.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  onRegister() {
    if (formKey.currentState!.validate()) {
      CoreFunction.showToast("Berhasil Register",
          backgroundColor: ColorPalette.white);
      // routePush(const HomeView(), RouterType.material);
    } else {
      CoreFunction.showToast("Unknown Action");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.teal,
      body: Padding(
        padding: Constant.paddingScreen,
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Component.textBold("Register",
                    fontSize: 50, colors: ColorPalette.black),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: usernameController,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: Component.decorationNoBorder("Username",
                      iconPrefix: Icons.account_circle_outlined),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'masukkan username anda';
                    }
                    if (value.length < 8) {
                      return 'username harus lebih dari 8 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: passwordController,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: Component.decorationNoBorder("Password",
                      iconPrefix: Icons.lock),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'masukkan password anda';
                    }
                    if (value.length < 8) {
                      return 'password harus lebih dari 8 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: Component.decorationNoBorder("Email",
                      iconPrefix: Icons.email),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'masukkan email anda';
                    }
                    if (value.length < 8) {
                      return 'email tidak ditemukan';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  controller: phoneController,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  decoration: Component.decorationNoBorder("Phone Number",
                      iconPrefix: Icons.local_phone),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'masukkan nomor hp anda';
                    }
                    if (value.length < 8) {
                      return 'no hp anda tidak lengkap';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Component.button(
                    label: "Register",
                    onPressed: () {
                      onRegister();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
