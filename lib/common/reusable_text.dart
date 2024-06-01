import 'package:flutter/material.dart';
class ReusableText extends StatelessWidget {
    ReusableText(  this.text,   this.applyStyle);
String text;
TextStyle applyStyle;
  @override
  Widget build(BuildContext context) {
    return Text(text,maxLines: 1,softWrap: false,style: applyStyle,textAlign: TextAlign.center,);
  }
}
