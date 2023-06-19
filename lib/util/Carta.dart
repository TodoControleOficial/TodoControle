import 'package:flutter/material.dart';

class Carta extends StatefulWidget {
  const Carta(
      {Key? key,
      this.assignedText,
      this.path,
      this.onTapFunction,
      this.hasFocus,
      required this.isTitle,
      this.title})
      : super(key: key);
  final bool isTitle;
  final String? title;
  final String? path;
  final String? assignedText;
  final bool? hasFocus;
  final Function()? onTapFunction;

  @override
  State<Carta> createState() => _CartaState();
}

class _CartaState extends State<Carta> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        SizedBox(
            height: 300,
            width: 180,
            child: widget.isTitle
                ? Material(
                    color: Colors.amber,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(25),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Center(
                      child: Text(widget.title!),
                    ))
                : Material(
                    color:
                        widget.hasFocus! ? Colors.blue.shade900 : Colors.blue,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(25),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: widget.onTapFunction,
                      focusColor: Colors.blue.shade900,
                      hoverColor: Colors.cyan.shade300,
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(widget.path!),
                            // image: NetworkImage(widget.path),
                            //height: 250,
                            //width: 180,
                          ),
                          const SizedBox(height: 25),
                          Center(
                            child: Center(
                              child: Text(
                                widget.assignedText!,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
      ],
    );
  }
}
