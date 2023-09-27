import 'package:audioplayers/audioplayers.dart';
import 'package:divya_bhakti/app/modules/global/snackbar.dart';
import 'package:get/get.dart';

class Audio_player extends GetxController {
  static final player = AudioPlayer();
  bool isplaying = false;
  String playerid = player.playerId;
  void playAudiofromAsset({String? audioLocation}) async {
    try {
      isplaying = true;
      await player.play(AssetSource(audioLocation!));
    } catch (e) {
      // customSnackBar.snackbar(title: 'Error', Message: e.toString());
      isplaying = false;
    }
  }

  void playAudiofromInternet({String? audioUrl}) async {
    try {
      await player.release();
      isplaying = true;
      await player.play(UrlSource(audioUrl!));
    } catch (e) {
      isplaying = false;
      // customSnackBar.snackbar(title: 'Error', Message: e.toString());
    }
  }

  void playInLoop({String? audioLocation}) {
    try {
      player.stop();
      isplaying = true;
      // player.release();
      playAudiofromAsset(audioLocation: audioLocation);
      player.setReleaseMode(ReleaseMode.loop);
    } catch (e) {
      isplaying = false;
      print(e.toString());
    }
  }

  void pause() async {
    print('audio stop');
    isplaying = false;
    player.pause();
  }

  void resume() async {
    player.resume();
  }

  void stop() async {
    await player.release();
    isplaying = false;
    print('stopped audio');
    await player.stop();
    // player.dispose();
  }

  PlayerState checkState() {
    return player.state;
  }
}
