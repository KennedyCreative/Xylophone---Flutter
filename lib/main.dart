import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Xylophone()));
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSong(String soung) async {
    final player = AudioPlayer();
    await player.play(AssetSource(soung));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                playSong('note1.wav');
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(color: Colors.red),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                playSong('note2.wav');
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(color: Colors.orange),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                playSong('note3.wav');
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(color: Colors.yellow),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                playSong('note4.wav');
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(color: Colors.green),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                playSong('note5.wav');
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(color: Colors.teal),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                playSong('note6.wav');
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                playSong('note7.wav');
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(color: Colors.purple),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
