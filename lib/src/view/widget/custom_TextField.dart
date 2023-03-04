import 'package:flutter/material.dart';
import 'package:shop/src/view/widget/brand_colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.prefixIcon,
    this.keytype,
    this.lebelText,
    this.keyy,
    this.maxNumber,
    this.controller,
    this.validator,
    this.data,
    this.hintText,
    this.initialText,
    this.suffixIcon,
    this.formatter,
    this.onChangeFunction,
    this.suffixText,
  });

  final TextEditingController? controller;
  final Function? onChangeFunction;
  final dynamic data;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final String? initialText;
  final dynamic validator;
  final String? hintText;
  final int? maxNumber;
  final String? lebelText;
  final dynamic formatter;
  final dynamic keytype;
  final String? suffixText;

  final String? keyy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        //minLines: 1,
        maxLines: maxNumber,
        initialValue: initialText,
        keyboardType: keytype,
        controller: controller,
        inputFormatters: formatter,
        validator: validator,
        // onSaved: (String value) => data[keyy] = value,
        //  onChanged: onChangeFunction,
        autofocus: false,
        style: myStyle(14.0, Color.fromARGB(234, 70, 69, 69)),
        decoration: InputDecoration(
          // hoverColor: Colors.black,
          filled: true,
          suffixText: suffixText,
          errorStyle: myStyle(
              12,
              Color.fromARGB(234, 70, 69, 69).withOpacity(0.9),
              FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          labelText: lebelText,
          hintStyle: myStyle(15, Color.fromARGB(234, 70, 69, 69)),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon ,
          labelStyle: myStyle(15, Color.fromARGB(234, 70, 69, 69)),
          hintText: hintText,
        ),
      ),
    );
  }
}
