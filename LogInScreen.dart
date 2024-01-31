import 'package:flutter/material.dart';
import 'package:mapfeature_project/screens/forgot_password_screen.dart';
import 'package:mapfeature_project/widgets/customButton.dart';
import 'package:mapfeature_project/widgets/customTextField.dart';
import 'package:mapfeature_project/widgets/customdivider.dart';
import 'package:mapfeature_project/widgets/passwordfield.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            const SizedBox(height: 20),
            DividerImage(),
            const SizedBox(height: 35),
            Container(
              height: 500,
              width: 100,
              decoration: BoxDecoration(
                color: const Color(0xffF6F8F8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 210, top: 20),
                          child: Text(
                            'Hello !',
                            style: TextStyle(
                                fontFamily: 'Langar',
                                // fontWeight: FontWeight.bold,
                                fontSize: 29,
                                color: Color.fromARGB(255, 128, 133, 134)),
                          ),
                        ),
                        Text(
                          'WELCOME BACK',
                          style: TextStyle(
                            fontFamily: 'Langar',
                            // fontWeight: FontWeight.bold,
                            fontSize: 29,
                            color: Color(0xff1F5D6B),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    CustomFormTextField(
                      onChanged: (data) {
                        email = data;
                      },
                      hintText: '  Email',
                    ),
                    const SizedBox(height: 10),
                    PasswordField(
                      obscureText: true,
                      onChanged: (data) {
                        password = data;
                      },
                      hintText: '  Password',
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen()),
                        );
                      },
                      child: const Text(
                        'Forgot Password ? ',
                        style: TextStyle(
                            fontFamily: 'Langar',
                            // fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xff1F5D6B)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      onTap: () async {
                        // Add your login logic here
                      },
                      text: '    Log in    ',
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontFamily: 'Langar',
                              color: Color.fromARGB(255, 136, 136, 136)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'signup');
                          },
                          child: const Text(
                            ' Sign up',
                            style: TextStyle(
                              fontFamily: 'Langar',
                              color: Color(0xff1F5D6B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
