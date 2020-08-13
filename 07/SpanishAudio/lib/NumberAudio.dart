import 'package:flutter/material.dart';

class NumberAudio {
  String audioUri;
  MaterialColor buttonColor;
  String buttonText;

  NumberAudio(String audioUri, MaterialColor btnClr, String btnTxt) {
    this.audioUri = audioUri;
    this.buttonColor = btnClr;
    this.buttonText = btnTxt;
  }
}
