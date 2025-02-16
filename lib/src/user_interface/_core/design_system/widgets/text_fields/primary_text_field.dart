import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../particles/particles.dart';

class PrimaryTextField extends StatefulWidget {
  const PrimaryTextField({
    super.key,
    this.height,
    this.focusNode,
    this.enabled = true,
    this.obscureText = false,
    this.isPassword = false,
    this.suffixIcon,
    required this.controller,
    this.onChanged,
    this.errorText,
    this.hintText,
    this.decorationIcon,
    this.prefixIcon,
    this.keyboardType,
    this.inputFormatters,
    this.maxLines = 1,
    this.onTap,
    this.onSubmitted,
    this.maxLength,
    this.disableKeyboard = false,
    this.borderColor = const Color.fromARGB(255, 218, 217, 217),
    this.fillColor = Colors.transparent,
    this.readOnly = false,
    this.onTapAction, // New property to trigger modal bottom sheet
  });

  final double? height;
  final bool enabled;
  final bool obscureText;
  final bool isPassword;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? errorText;
  final String? hintText;
  final Widget? decorationIcon;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final int? maxLength;
  final void Function()? onTap;
  final void Function(String)? onSubmitted;
  final bool disableKeyboard;
  final Color borderColor;
  final Color fillColor;
  final bool readOnly;
  final VoidCallback? onTapAction; // Callback for custom action on tap

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  bool isVisibilityOn = false;

  @override
  void initState() {
    super.initState();
    isVisibilityOn = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTapAction != null) {
          widget.onTapAction!(); // Trigger custom action (e.g., show bottom sheet)
        } else if (!widget.readOnly) {
          FocusScope.of(context).requestFocus(widget.focusNode);
        }
      },
      child: AbsorbPointer(
        absorbing: widget.readOnly,
        child: SizedBox(
          height: widget.height,
          child: TextField(
            readOnly: widget.readOnly,
            style: Particles.textStyles.headlineSmallBlack,
            focusNode: widget.focusNode,
            keyboardType: widget.keyboardType,
            autocorrect: false,
            cursorColor: Particles.colors.secondaryText,
            obscureText: widget.isPassword ? isVisibilityOn : widget.obscureText,
            enabled: widget.enabled,
            maxLines: widget.maxLines,
            controller: widget.controller,
            onChanged: widget.onChanged,
            maxLength: widget.maxLength,
            decoration: InputDecoration(
              filled: true,
              fillColor: widget.fillColor,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor, width: 1),
                borderRadius: Particles.borderRadiusCircular.extraSmall,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor, width: 1),
                borderRadius: Particles.borderRadiusCircular.extraSmall,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor, width: 2),
                borderRadius: Particles.borderRadiusCircular.extraSmall,
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1),
                borderRadius: Particles.borderRadiusCircular.extraSmall,
              ),
              contentPadding: const EdgeInsetsDirectional.fromSTEB(11.0, 5.0, 5.0, 11.0),
              errorText: widget.errorText,
              hintText: widget.hintText,
              hintStyle: Particles.textStyles.headlineSmall.copyWith(color: Colors.grey),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon ??
                  (widget.isPassword
                      ? GestureDetector(
                          onTap: () {
                            isVisibilityOn = !isVisibilityOn;
                            setState(() {});
                          },
                          child: Icon(!isVisibilityOn ? Icons.visibility : Icons.visibility_off),
                        )
                      : widget.decorationIcon),
            ),
            inputFormatters: widget.inputFormatters,
            onSubmitted: widget.onSubmitted,
          ),
        ),
      ),
    );
  }
}
