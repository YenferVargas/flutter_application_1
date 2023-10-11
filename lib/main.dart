import 'package:flutter/material.dart';
import 'music_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicScreen(), // Usa MusicScreen como la pantalla principal
    );
  }
}
