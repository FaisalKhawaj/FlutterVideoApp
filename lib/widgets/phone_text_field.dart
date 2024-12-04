
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
      child: TextField(
        keyboardType: TextInputType.phone,
        style: R.textStyle.inputTextStyle(),
        decoration: InputDecoration(
            label: null,
            alignLabelWithHint: true,
            filled: true,
            hintText: 'Phone Number',
            hintStyle: R.textStyle.inputHintTextStyle(),
            fillColor: R.themeProvider.colors.inputBg,
            errorBorder: R.inputStyle.inputErrorBorderStyle(),
            enabledBorder: R.inputStyle.inputBorderStyle(),
            border: R.inputStyle.inputBorderStyle(),
            focusedBorder: R.inputStyle.inputFocusBorderStyle(),
            disabledBorder: OutlineInputBorder()
        ),
      ),
    );
  }
}
