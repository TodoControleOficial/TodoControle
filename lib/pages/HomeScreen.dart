import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tdc/appBase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: neutralBlue1,
        ),
        Center(
          child: Container(
            width: double.infinity,
            height: 300,
            child: Center(
                child: Text(
              'Todo Controle',
              style: GoogleFonts.abrilFatface(fontSize: 65),
            )),
            color: darkBlue2,
          ),
        ),
      ],
    );
  }
}
