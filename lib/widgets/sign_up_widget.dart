import 'package:flutter/material.dart';
import 'package:voln/widgets/custom_textfield.dart';

class SignUpWidget extends StatefulWidget {
  bool isLogin;
  SignUpWidget({super.key, required this.isLogin});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final ValueNotifier<bool> obscureNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.isLogin
            ? Container()
            : CustomTextField(
                isPassword: false,
                controller: TextEditingController(),
                hintText: "Username",
                icon: const Icon(Icons.person_rounded),
              ),
        const SizedBox(height: 10),
        CustomTextField(
          icon: const Icon(Icons.email),
          controller: TextEditingController(),
          hintText: "email",
        ),
        const SizedBox(height: 10),
        CustomTextField(
          isPassword: true,
          controller: TextEditingController(),
          hintText: "hintText",
          obscureTextNotifier: obscureNotifier,
        ),
      ],
    );
  }
}
