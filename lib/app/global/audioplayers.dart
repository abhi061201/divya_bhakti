import 'package:audioplayers/audioplayers.dart';
import 'package:divya_bhakti/app/global/snackbar.dart';
import 'package:get/get.dart';

class Audio_player extends GetxController {
  static final player = AudioPlayer();
  
  void playAudiofromAsset({String? audioLocation}) async {
    try {
      await player.play(AssetSource(audioLocation!));
    } catch (e) {
      customSnackBar.snackbar(title: 'Error', Message: e.toString());
    }
  }
  void playAudiofromInternet({String? audioUrl}) async {
    try {
      await player.play(UrlSource(audioUrl!));
    } catch (e) {
      customSnackBar.snackbar(title: 'Error', Message: e.toString());
    }
  }

  void playInLoop({String? audioLocation}) {
    player.stop();
    // player.release();
    playAudiofromAsset(audioLocation: audioLocation);
    player.setReleaseMode(ReleaseMode.loop);
  }

  void pause() async {
    print('audio stop');
    player.pause();

  }

  void stop() async {
    print('stopped audio');
    await player.stop();
    // player.dispose();
  }
}
