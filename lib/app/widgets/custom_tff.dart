import 'package:dev/app/data/services/app_config/service.dart';
import 'package:dev/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTffWidget extends Container {
  final Function(String s)? onSaved;
  final Function(String s)? onValidate;
  final Function(String s)? onChanged;
  final TextEditingController? controller;
  final Key? key;
  final text,
      fontSize,
      focus,
      size,
      obscure,
      mask,
      maxLength,
      maxLines,
      marginTop,
      marginRight,
      marginLeft,
      check,
      icon,
      type,
      enabled,
      filled,
      initialValue,
      colorInitialValue,
      contentPadding,
      counterText,
      prefixText,
      prefixStyle,
      prefixIcon,
      enabledBorderColor,
      focusedBorderColor,
      errordBorderColor,
      disabledBorderColor,
      fErrordBorderColor,
      focusNode,
      hintText,
      primaryColor;

  CustomTffWidget({
    this.focus = false,
    this.key,
    this.text,
    this.fontSize = 15.0,
    this.enabled = true,
    this.colorInitialValue = Colors.grey,
    this.type,
    this.mask = const <TextInputFormatter>[],
    this.marginTop = 0.0,
    this.marginRight = 0.0,
    this.marginLeft = 0.0,
    this.controller,
    this.initialValue,
    this.icon,
    this.obscure = false,
    this.check = false,
    this.size,
    this.maxLength,
    this.counterText = '',
    this.maxLines = 1,
    this.filled = true,
    this.onChanged,
    this.onSaved,
    this.onValidate,
    this.contentPadding,
    this.prefixText,
    this.prefixStyle,
    this.prefixIcon,
    this.focusNode,
    this.enabledBorderColor = Colors.grey,
    this.disabledBorderColor = Colors.grey,
    this.focusedBorderColor = Colors.grey,
    this.errordBorderColor = Colors.red,
    this.fErrordBorderColor = Colors.red,
    this.primaryColor = Colors.grey,
    // ignore: avoid_init_to_null
    this.hintText = null,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: this.marginTop,
            left: this.marginLeft,
            right: this.marginRight),
        width: this.size,
        child: Theme(
          data: ThemeData(
            primaryColor: this.primaryColor,
            errorColor: Colors.red,
          ),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            autofocus: this.focus,
            key: this.key,
            focusNode: this.focusNode,
            inputFormatters: this.mask,
            maxLength: this.maxLength,
            initialValue: this.initialValue,
            style: TextStyle(
                color: this.colorInitialValue, fontSize: this.fontSize),
            enabled: this.enabled,
            controller: this.controller,
            obscureText: this.obscure,
            onSaved: (v) => this.onSaved!(v!),
            validator: (v) => this.onValidate!(v!),
            onChanged: (v) => this.onChanged!(v),
            cursorColor: Colors.white,
            maxLines: this.maxLines,
            keyboardType: this.type,
            decoration: new InputDecoration(
              counterText: this.counterText,
              contentPadding: this.contentPadding,
              prefixIcon: this.prefixIcon,
              prefixText: this.prefixText,
              prefixStyle: this.prefixStyle,
              errorStyle: TextStyle(color: Colors.red),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: this.enabledBorderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: this.focusedBorderColor),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: this.disabledBorderColor),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: this.errordBorderColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: this.fErrordBorderColor),
              ),
              labelStyle: TextStyle(color: Colors.grey),
              counterStyle: TextStyle(color: Colors.white),
              suffixIcon: this.icon,
              labelText: this.text,
              hintText: this.hintText,
            ),
          ),
        ));
  }
}
