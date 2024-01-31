import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String? hintText;
  final Function(String)? onChanged;
  final bool? obscureText;

  PasswordField({this.hintText, this.onChanged, this.obscureText = false});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
      },
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color(0xff87A0A2),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
            vertical: 10, horizontal: 20), // Adjust the padding as needed
        enabledBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(40), // Adjust the border radius as needed
          borderSide: BorderSide(
            color: Color.fromARGB(255, 229, 231, 232),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: Color(0xff92bec9),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
