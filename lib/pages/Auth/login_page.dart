import 'package:flutter/material.dart';
import 'package:voln/controllers/auth_bloc.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';
import 'package:voln/widgets/app_text.dart';
import 'package:voln/widgets/button.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextHeading(
              text: 'HopeLink',
              size: 30,
              color: bluishGreen,
            ),
            SizedBox(
                height: screenHeight * 0.1,
                child: Image.asset('assets/logo.png')),
            SizedBox(
              width: screenWidth * 0.6,
              child: const AppText(
                fontSize: 15,
                text:
                    'Welcome to HopeLink.We make charity and volunteering easy and fun',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextFormField(
                controller: emailController,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.person_rounded, color: darkGrey),
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: grey),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextFormField(
                controller: passwordController, // Added password controller
                obscureText: _isObscure,
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: darkGrey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure; // Toggles visibility
                      });
                    },
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: grey),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  print('button tapped');
                  // login(emailController.text, passwordController.text);
                  login("pandeyprerit45@gmail.com", "SecurePass123");
                },
                child: const AppButton(
                    buttonText: 'Login', buttonColor: Colors.blue)),
            InkWell(
                onTap: () {},
                child: const AppButton(
                  buttonText: 'SignUp',
                  buttonColor: white,
                  textColor: darkBluishGreen,
                ))
          ],
        ),
      ),
    );
  }
}

// // UI Integration
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:voln/controllers/auth_bloc.dart';

// class AuthPage extends StatefulWidget {
//   const AuthPage({super.key});

//   @override
//   State<AuthPage> createState() => _AuthPageState();
// }

// class _AuthPageState extends State<AuthPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   bool _isObscure = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocProvider(
//         create: (context) => AuthBloc(),
//         child: BlocConsumer<AuthBloc, AuthState>(
//           listener: (context, state) {
//             if (state is AuthSuccess) {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text('Login Successful')));
//             } else if (state is AuthFailure) {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text(state.error)));
//             }
//           },
//           builder: (context, state) {
//             return Column(
//               children: [
//                 TextField(
//                     controller: emailController,
//                     decoration: InputDecoration(hintText: 'Email')),
//                 TextField(
//                   controller: passwordController,
//                   obscureText: _isObscure,
//                   decoration: InputDecoration(
//                     hintText: 'Password',
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                           _isObscure ? Icons.visibility_off : Icons.visibility),
//                       onPressed: () => setState(() => _isObscure = !_isObscure),
//                     ),
//                   ),
//                 ),
//                 if (state is AuthLoading) CircularProgressIndicator(),
//                 ElevatedButton(
//                   onPressed: () {
//                     context.read<AuthBloc>().add(
//                           LoginRequested(
//                               emailController.text, passwordController.text),
//                         );
//                   },
//                   child: Text('Login'),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
