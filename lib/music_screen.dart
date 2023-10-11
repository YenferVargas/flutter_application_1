import 'package:flutter/material.dart';
import 'player_screen.dart'; // Importa la pantalla del reproductor

class MusicScreen extends StatelessWidget {
  final List<String> songs = ['Canción 1', 'Canción 2', 'Canción 3']; // Lista de canciones

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Canciones'),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              Icons.music_note, // Ícono de música
              color: Colors.blue,
            ),
            title: Text(songs[index]),
            onTap: () {
              // Navegar a la pantalla del reproductor cuando se hace clic en una canción
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlayerScreen(song: songs[index]),
                ),
              );
            },
            trailing: Icon(
              Icons.play_arrow, // Ícono de reproducción
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
