import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? subffixIcon;
  final TextInputType? textInputType;
  final bool obscureText;

  final String formProperty;
  final Map<String,String> formValues;


  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.subffixIcon,
    this.textInputType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: textInputType == null ? textInputType :TextInputType.text ,
      obscureText: obscureText,
      initialValue: '  ',
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) { 
        if (value == null) return 'Este campo es requerido';
        return  value.length < 3 ? 'Minimp de 3 letras' : null;
      },
      autovalidateMode:  AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 carácteres',
        prefixIcon: icon == null ? null : Icon(subffixIcon),
        icon: icon == null ? null : Icon(icon),
        /// border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
      )
    );
  }
}