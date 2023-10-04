import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {Key? key,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = true,
      this.textStyle,
      this.obscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.hintStyle,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.fillColor,
      this.filled = false,
      this.contentPadding,
      this.defaultBorderDecoration,
      this.enabledBorderDecoration,
      this.focusedBorderDecoration,
      this.disabledBorderDecoration,
      this.validator,
      this.onChange,
      this.inputFormat,
      this.readonly = false})
      : super(
          key: key,
        );
  final bool readonly;
  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final Color? fillColor;

  final bool? filled;

  final EdgeInsets? contentPadding;

  final InputBorder? defaultBorderDecoration;

  final InputBorder? enabledBorderDecoration;

  final InputBorder? focusedBorderDecoration;

  final InputBorder? disabledBorderDecoration;

  final FormFieldValidator<String>? validator;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormat;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          readOnly: readonly,
          inputFormatters: inputFormat,
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: onChange,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        fillColor: fillColor,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
        border: defaultBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: theme.colorScheme.onError,
                width: 2,
              ),
            ),
        enabledBorder: enabledBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: theme.colorScheme.onError,
                width: 2,
              ),
            ),
        focusedBorder: focusedBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: theme.colorScheme.onError,
                width: 2,
              ),
            ),
        disabledBorder: disabledBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: theme.colorScheme.onError,
                width: 2,
              ),
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillWhiteA70001 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineBluegray900 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.blueGray900,
          width: 2,
        ),
      );
  static OutlineInputBorder get fillWhiteA70001TL8 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineGray900 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.gray900,
          width: 2,
        ),
      );
  static OutlineInputBorder get outlineBluegray200 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.blueGray200,
          width: 2,
        ),
      );
  static OutlineInputBorder get outlineWhiteA70001 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.whiteA70001,
          width: 2,
        ),
      );
  static OutlineInputBorder get fillGray200 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillWhiteA70001TL4 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
}
