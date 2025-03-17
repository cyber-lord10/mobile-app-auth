import 'package:audioplayers/audioplayers.dart';

class TapSound {
  static final AudioPlayer _audioPlayer = AudioPlayer();
  static bool _isPlaying = false;

  static final Map<String, String> _soundPaths = {
    'failure': 'sounds/gestures/failure.mp3',
    'success': 'sounds/gestures/success.mp3',
    'normal': 'sounds/gestures/normal.mp3',
  };

  static Future<void> playTapSound([String type = 'normal']) async {
    if (_isPlaying) {
      _audioPlayer.stop();
      // return;
    } // Exit if already playing

    // Set the flag to true
    _isPlaying = true;

    final String soundPath = _soundPaths[type] ?? _soundPaths['normal']!;

    // Set the audio source
    await _audioPlayer.setSource(AssetSource(soundPath));

    // Start playing the audio
    await _audioPlayer.resume();

    // Listen for when the audio finishes playing
    _audioPlayer.onPlayerComplete.listen((event) {
      _isPlaying = false;
      return;
    });
  }
}
