import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String label;
  final String hint;
  final bool isPassword;

  const InputField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.label,
        hintText: widget.hint,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
