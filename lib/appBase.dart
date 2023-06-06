import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tdc/pages/AboutSceen.dart';
import 'package:tdc/pages/AddScreen.dart';
import 'package:tdc/pages/ConfigurationsScreen.dart';
import 'package:tdc/pages/ContextsScreen.dart';
import 'package:tdc/pages/HomeScreen.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

Color neutralBlue1 = const Color(0xffd2e9ff);
Color darkBlue1 = const Color(0xff26527d);
Color darkBlue2 = const Color(0xff3675b3);
Color newblue = const Color(0xff8ecae6);

class _MyHomeState extends State<MyHome> {
  final screens = [
    const HomeScreen(),
    const AddScreen(),
    const ContextsScreen(),
    const ConfigurationsScreen(),
    const AboutScreen(),
  ];

  int index = 0;
  final items = <Widget>[
    const Icon(Icons.home, size: 30),
    const Icon(Icons.add_circle, size: 30),
    const Icon(Icons.article, size: 30),
    const Icon(Icons.settings, size: 30),
    const Icon(Icons.question_mark, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue2,
        centerTitle: true,
        title: Text(
          'Todo Controle',
          style: GoogleFonts.abrilFatface(),
        ),
      ),
      extendBody: true,
      body: screens[index],
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
        color: darkBlue2,
        backgroundColor: Colors.transparent,
        items: items,
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
