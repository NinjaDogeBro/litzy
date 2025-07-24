import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';

class gatoPage extends StatefulWidget {
  const gatoPage({super.key});

  @override
  State<gatoPage> createState() => _gatoPageState();
}

class _gatoPageState extends State<gatoPage> {
  bool _showNoise = false;
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playSound() async {
    await _audioPlayer.play(AssetSource('audio/catExplode.mp3'));
  }

  void _onTap() async {
    // Play sound immediately
    await playSound();

    // Stay on gato image for 3 seconds
    await Future.delayed(const Duration(seconds: 1));

    // Switch to boom image
    setState(() {
      _showNoise = true;
    });

    // Stay on boom image for 3 seconds
    await Future.delayed(const Duration(milliseconds: 1500));

    // Switch back to gato image
    setState(() {
      _showNoise = false;
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Tap to explode lil bro (you woudn\'t right?)',
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: GestureDetector(
              onTap: _onTap,
              child: Image.asset(
                _showNoise ? 'lib/images/boom.png' : 'lib/images/gato.png',
                height: 180,
              ),
            ),
          ),
        ],
      ),
    );
  }
}