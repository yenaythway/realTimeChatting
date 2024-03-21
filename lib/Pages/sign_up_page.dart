import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:real_time_chatting/Providers/login_provider.dart';
import 'package:real_time_chatting/Utils/super_scaffold.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpForm();
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginProvider loginProvider =
        Provider.of<LoginProvider>(context, listen: false);
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/login.png",
                ))),
        child: SuperScaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  // keyboardType: TextInputType.number,
                  controller: loginProvider.usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide()),
                    border: OutlineInputBorder(borderSide: BorderSide()),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: loginProvider.pswController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide()),
                    border: OutlineInputBorder(borderSide: BorderSide()),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: loginProvider.confpswController,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide()),
                    border: OutlineInputBorder(borderSide: BorderSide()),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (loginProvider.pswController.text !=
                        loginProvider.confpswController.text) {
                      return "Password not same";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      loginProvider.createAccountToAgora();
                    }
                  },
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(color: Colors.white),
                      width: double.infinity,
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
