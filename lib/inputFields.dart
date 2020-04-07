import 'package:flutter/material.dart';
import 'colors.dart';

const inputFieldTextStyle =
TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500);

const inputFieldHintTextStyle =
TextStyle(fontFamily: 'Poppins', color: Color(0xff444444));

const inputFieldPasswordTextStyle = TextStyle(
    fontFamily: 'Poppins', fontWeight: FontWeight.w500, letterSpacing: 3);

const inputFieldHintPaswordTextStyle = TextStyle(
    fontFamily: 'Poppins', color: Color(0xff444444), letterSpacing: 2);

const inputFieldFocusedBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(
      color: primaryColor,
    ));

const inputFieldDefaultBorderStyle = OutlineInputBorder(
    gapPadding: 0, borderRadius: BorderRadius.all(Radius.circular(6)));
Container farmTextInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}

Container farmEmailInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      keyboardType: TextInputType.emailAddress,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}


Container farmPasswordInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      obscureText: true,
      cursorColor: primaryColor,
      style: inputFieldHintPaswordTextStyle,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintPaswordTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}
