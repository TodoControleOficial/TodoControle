// ignore_for_file: prefer_const_constructors

import 'package:cross_file/cross_file.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:tdc/appBase.dart';

import '../util/Carta.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  String nome = '';
  String contexto = '';
  @override
  Widget build(BuildContext context) {
    final List<XFile> list = [];
    final List<String> paths = [];
    String path = '';

    bool full = false;

    bool _dragging = false;

    Offset? offset;

    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: neutralBlue1,
        ),
        Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                height: 500,
                width: 300,
                color: darkBlue2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextField(
                          onChanged: (text) {
                            nome =
                                text; //precisa construir um TextController para os Labels
                          },
                          decoration: const InputDecoration(
                            labelText: 'Descrição da imagem:',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      TextField(
                          onChanged: (text) {
                            contexto = text;
                          },
                          decoration: const InputDecoration(
                            labelText: 'Contexto:',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 20,
                        width: double.infinity,
                        child:
                            Center(child: Text("Arraste a imagem até aqui:")),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      DropTarget(
                        onDragDone: (detail) async {
                          setState(() {
                            list.addAll(detail.files);
                          });
                          debugPrint('onDragDone:');
                          for (final file in detail.files) {
                            paths.add(file.path);
                            path = file.path;
                            full = true;
                            debugPrint('  ${file.path} ${file.name}'
                                '  ${await file.lastModified()}'
                                '  ${await file.length()}'
                                '  ${file.mimeType}');
                          }
                        },
                        onDragEntered: (detail) {
                          setState(() {
                            _dragging = true;
                            offset = detail.localPosition;
                          });
                        },
                        onDragExited: (detail) {
                          setState(() {
                            _dragging = false;
                            offset = null;
                          });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                              height: 150,
                              width: 150,
                              color: _dragging ? Colors.black : Colors.blue),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        child: const Icon(
                          Icons.save_alt,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          if (nome != '' && contexto != '' && path != '') {
                            Carta carta = Carta(
                              assignedText: nome,
                              path: path,
                            );
                          }
                        },
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Salvar")
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
