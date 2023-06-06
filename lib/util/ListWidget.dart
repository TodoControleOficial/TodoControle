// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tdc/util/Carta.dart';

class ListWidget extends StatefulWidget {
  final List<Carta> carta;
  final String ctxName;
  const ListWidget({Key? key, required this.carta, required this.ctxName})
      : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 252,
            width: double.infinity,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: double.infinity,
                  width: 150,
                  color: Colors.yellow,
                  child: Center(child: Text(widget.ctxName)),
                ),
                Flexible(
                    //permite preencher o restante da Row com o Container filho
                    child: Container(
                        height: double.infinity,
                        color: Colors.black,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.carta.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return Carta(
                                assignedText: widget.carta[index].assignedText,
                                //assignedContext: widget.carta[index].name,
                                path: widget.carta[index].path);
                          },
                        )))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
