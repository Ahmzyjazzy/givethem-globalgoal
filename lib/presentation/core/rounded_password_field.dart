import 'package:flutter/material.dart';
import 'package:givethem/presentation/core/text_field_container.dart';
import 'package:givethem/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final Function(String) onChanged;
  final String Function(String) validator;

  const RoundedPasswordField({Key key, this.onChanged, this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        onChanged: onChanged,
        validator: validator,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
