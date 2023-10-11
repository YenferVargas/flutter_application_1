import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  final String song;

  PlayerScreen({required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reproductor de $song'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.music_note, // Ícono de música en el reproductor
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Reproduciendo: $song',
              style: TextStyle(fontSize: 18),
            ),
            // Agrega controles de reproducción aquí (por ejemplo, botones de reproducción, pausa, etc.)
          ],
        ),
      ),
    );
  }
}
