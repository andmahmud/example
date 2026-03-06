import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final double? letterSpacing;
  final double? height;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? style;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.maxLines,
    this.overflow,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      overflow: overflow ?? TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style:
          style ??
          GoogleFonts.inter(
            fontSize: (fontSize ?? 14),
            fontWeight: fontWeight ?? FontWeight.normal,
            color: color ?? Colors.black,
            decoration: decoration ?? TextDecoration.none,
            letterSpacing: letterSpacing,
            height: height,
          ),
    );
  }
}
