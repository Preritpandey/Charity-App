import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voln/controllers/auth_bloc.dart';
import 'package:voln/pages/Home/home_page.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/widgets/app_text.dart';
import 'package:voln/widgets/button.dart';
import 'package:voln/widgets/login_fields.dart';
import 'package:voln/widgets/sign_up_widget.dart';

class AuthPage extends StatefulWidget {
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isSignUp = false;
  bool isLogin = true;
  void toggleAuthCards() {
    setState(() {
      !isLogin;
      !isSignUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthBloc(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: AppText(text: 'Login Successful')));
            } else if (state is AuthFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: screenHeight * 0.1),
                const Text(
                  'HopeLink',
                  style: TextStyle(fontSize: 30, color: Colors.teal),
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                  child: Image.asset('assets/logo.png'),
                ),
                SizedBox(height: screenHeight * 0.03),
                SizedBox(
                  width: screenWidth * 0.6,
                  child: const Text(
                    'Welcome to HopeLink. We make charity and volunteering easy and fun.',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),

                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: isLogin
                      ? LoginFields(
                          emailController: emailController,
                          passwordController: passwordController,
                        )
                      : SignUpWidget(isLogin: isLogin),
                ),
                SizedBox(height: screenHeight * 0.02),
                if (state is AuthLoading) CircularProgressIndicator(),
                AppButton(
                  buttonText: 'Log In',
                  buttonColor: buttonBlue,
                  onTap: () {
                    context.read<AuthBloc>().add(
                          LoginRequested(
                              emailController.text, passwordController.text),
                        );
                    if (state is AuthSuccess) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                ),
                SizedBox(height: screenHeight * 0.01),
                Container(
                    child: isSignUp
                        ? SignUpWidget(
                            isLogin: false,
                          )
                        : Container()),
                SizedBox(height: screenHeight * 0.01),

                AppButton(
                  onTap: () {
                    setState(() {
                      isSignUp = !isSignUp;
                    });
                  },
                  buttonText: 'Sign Up',
                  textColor: darkBluishGreen,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
