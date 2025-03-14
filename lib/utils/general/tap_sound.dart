import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TapSound {
  static final AudioPlayer _audioPlayer = AudioPlayer();

  static Future<void> playTapSound([String type = 'normal']) async {

    final soundPaths = {
      'failed': 'sounds/gestures/failed.mp3',
      'success': 'sounds/gestures/success.mp3',
      'normal': 'sounds/gestures/normal.mp3',
    };

    final soundPath = soundPaths[type] ?? soundPaths['normal']!;

    await _audioPlayer.play(AssetSource(soundPath));
  }
}
