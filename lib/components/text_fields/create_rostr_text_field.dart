import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateRostrTextField extends StatefulWidget {
  final int minLines;
  final int maxLines;
  final String? error;
  final int? maxLength;
  final String? hintText;
  final String? prefixText;
  final String? initialValue;
  final Widget? suffixIcon;
  final bool isObscuredText;
  final TextAlign textAlign;
  final VoidCallback? onPressed;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final VoidCallback? onEditingComplete;
  final VoidCallback? onSuffixIconPressed;
  final List<TextInputFormatter>? formatter;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final bool? enabledField;
  final bool autoFocus;

  final bool enableTextCapitalization;
  final bool isIconsBackTransparent;
  final bool readOnly;

  const CreateRostrTextField(
      {Key? key,
      this.autoFocus = false,
      this.onPressed,
      this.onSuffixIconPressed,
      this.readOnly = false,
      this.formatter,
      this.isIconsBackTransparent = false,
      this.onEditingComplete,
      required this.controller,
      this.textInputAction = TextInputAction.done,
      this.hintText = '',
      this.minLines = 1,
      this.maxLines = 1,
      this.keyboardType = TextInputType.text,
      this.suffixIcon,
      this.maxLength,
      this.error,
      this.onChanged,
      required this.focusNode,
      this.enabledField = true,
      this.isObscuredText = false,
      this.textAlign = TextAlign.start,
      this.enableTextCapitalization = false,
      this.prefixText,
      this.initialValue,
      this.nextFocusNode})
      : super(key: key);

  @override
  State<CreateRostrTextField> createState() => _CreateRostrTextFieldState();
}

class _CreateRostrTextFieldState extends State<CreateRostrTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      onTap: widget.onPressed,
      readOnly: widget.readOnly,
      maxLength: widget.maxLength,
      autofocus: widget.autoFocus,
      textInputAction: widget.textInputAction,
      onChanged: (v) {
        widget.onChanged?.call(v);
      },
      textAlign: widget.textAlign,
      controller: widget.controller,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      enabled: widget.enabledField,
      inputFormatters: widget.formatter,
      keyboardType: widget.keyboardType,
      obscureText: widget.isObscuredText,
      onEditingComplete: () {
        widget.focusNode.unfocus();
        widget.onEditingComplete?.call();
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorText: widget.error,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
