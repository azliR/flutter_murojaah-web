import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:record/record.dart';

@module
abstract class LocalInjectableModule {
  @lazySingleton
  Record get record => Record();

  @lazySingleton
  AudioPlayer get audioPlayer => AudioPlayer();
}
