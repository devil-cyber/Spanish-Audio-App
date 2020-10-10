import 'package:flutter/material.dart';

class NumberAudio{
  String audioUri;
  MaterialColor buttonColor;
  String buttonText;
  NumberAudio(String au, MaterialColor bc, String bt){
    this.audioUri = au;
    this.buttonColor = bc;
    this.buttonText = bt;
  }
}