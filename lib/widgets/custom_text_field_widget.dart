import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final border;
  final textInputAction;
  final bool obscureText;
  final onFieldSubmitted;
  const CustomTextFieldWidget(
      {Key? key,
      required this.label,
      required this.onChanged,
      this.border,
      this.obscureText = false,
      this.textInputAction,
      this.onFieldSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      decoration: InputDecoration(
        label: Text(label),
        border: border,
      ),
      onChanged: onChanged,
      obscureText: obscureText,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
