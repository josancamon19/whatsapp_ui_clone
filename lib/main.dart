import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Whatsapp",
    home: WhatsappHome(),
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
      accentColor: Color(0xff25D366),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

