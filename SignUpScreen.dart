import 'package:flutter/material.dart';
import 'package:mapfeature_project/widgets/customButton.dart';
import 'package:mapfeature_project/widgets/customTextField.dart';
import 'package:mapfeature_project/widgets/customdivider.dart';
import 'package:mapfeature_project/widgets/passwordfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

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
            DividerImage(), // You can include DividerImage if needed
            const SizedBox(height: 30),
            Container(
              height: 550,
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
                          padding: EdgeInsets.only(right: 205, top: 20),
                          child: Text(
                            'Welcome!',
                            style: TextStyle(
                              fontFamily: 'Langar',
                              fontSize: 24,
                              color: Color.fromARGB(255, 128, 133, 134),
                            ),
                          ),
                        ),
                        Text(
                          'Create Your Account ',
                          style: TextStyle(
                            fontFamily: 'Langar',
                            fontSize: 25,
                            color: Color(0xff1F5D6B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    CustomFormTextField(
                      onChanged: (data) {
                        name = data;
                      },
                      hintText: 'Full Name',
                    ),
                    SizedBox(height: 20),
                    CustomFormTextField(
                      onChanged: (data) {
                        email = data;
                      },
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 20),
                    PasswordField(
                      onChanged: (data) {
                        password = data;
                      },
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 20),
                    PasswordField(
                      onChanged: (data) {
                        confirmPassword = data;
                      },
                      hintText: 'Confirm Password',
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      onTap: () async {
                        // Add your sign-up logic here
                      },
                      text: 'SIGN UP',
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'already have an account?',
                          style: TextStyle(
                              fontFamily: 'Langar',
                              color: Color.fromARGB(255, 136, 136, 136)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            '  Login',
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
