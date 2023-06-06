import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_tts/flutter_tts_web.dart';

import '../appBase.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  TtsState ttsState = TtsState.stopped;

  get isPlaying => ttsState == TtsState.playing;
  get isStopped => ttsState == TtsState.stopped;
  get isPaused => ttsState == TtsState.paused;
  get isContinued => ttsState == TtsState.continued;

  Future speak(texto) async {
    await flutterTts.setVolume(0.5);
    await flutterTts.setSpeechRate(1);
    await flutterTts.setPitch(1);
    flutterTts.speak(texto);
  }

  Future _pause() async {
    var result = await flutterTts.pause();
    if (result == 1) setState(() => ttsState = TtsState.paused);
  }

  String texto1 =
      "Este aplicativo foi desenvolvido para auxiliar pessoas com dificuldade de fala e de controle motor a se comunicar com maior autonomia. Para pronunciar um texto, basta selecionar a imagem desejada e o conteúdo logo será emitido em voz alta pelo computador. Se pressionar e segurar o botão, o texto deve pausar.";
  String texto2 =
      "Na tela central estão suas possibilidades de fala. Navegando no sentido vertical, escolhe-se os contextos. Na horizontal, seus respectivos conteúdos.";
  String texto3 =
      "É possível adicionar novas cartas de fala. Para isso, navegue até o segundo ícone, preencha as informações necessárias e clique em “Salvar”. As informações logo serão adicionadas à tela central.";

  FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                color: Colors.blue,
                height: 250,
                width: 500,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("1.   " + texto1),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("2.   " + texto2),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("3.   " + texto3)
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<CircleBorder>(
                              const CircleBorder())),
                      onPressed: () async {
                        await flutterTts.awaitSpeakCompletion(true);
                        await flutterTts.speak(texto1);
                      },
                      onLongPress: () async {
                        await flutterTts.pause();
                      },
                      icon: const Icon(Icons.question_mark),
                      label: const Text("1")),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<CircleBorder>(
                              const CircleBorder())),
                      onPressed: () async {
                        await flutterTts.awaitSpeakCompletion(true);
                        await flutterTts.speak(texto2);
                      },
                      onLongPress: () async {
                        await flutterTts.pause();
                      },
                      icon: const Icon(Icons.question_mark),
                      label: const Text("2")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<CircleBorder>(
                              const CircleBorder())),
                      onPressed: () async {
                        await flutterTts.awaitSpeakCompletion(true);
                        await flutterTts.speak(texto3);
                      },
                      onLongPress: () async {
                        await flutterTts.pause();
                      },
                      icon: const Icon(Icons.question_mark),
                      label: const Text("3")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
