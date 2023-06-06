import 'package:flutter/material.dart';

import '../appBase.dart';
import '../util/Configs.dart';

class ConfigurationsScreen extends StatefulWidget {
  const ConfigurationsScreen({Key? key}) : super(key: key);

  @override
  State<ConfigurationsScreen> createState() => _ConfigurationsScreenState();
}

class _ConfigurationsScreenState extends State<ConfigurationsScreen> {
  Configs audioConfigs = Configs();

  Color green1 = const Color(0xff95D1CC);
  Color green2 = const Color(0xff68A7AD);
  Color green3 = const Color(0xff99C4C8);
  Color beige1 = const Color(0xffE5CB9F);
  Color beige2 = const Color(0xffEEE4AB);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: neutralBlue1,
        ),
        ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), //or 15.0
                  child: Container(
                      height: 550.0,
                      width: 850.0,
                      color: darkBlue2,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      color: green1,
                                      height: 50,
                                      width: 241,
                                      child: const Center(
                                          child:
                                              Text("Configurações de Áudio"))),
                                ),
                                Container(
                                  color: darkBlue2,
                                  height: 50,
                                  width: 241,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      color: green1,
                                      height: 400,
                                      width: 241,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 133,
                                            width: 241,
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                        color: beige1,
                                                        width: 3),
                                                  ),
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(Icons
                                                        .volume_up_outlined),
                                                    iconSize: 60,
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Center(
                                                      child: Container(
                                                          height: 67,
                                                          width: 121,
                                                          child: Container(
                                                            child: IconButton(
                                                                onPressed: () {
                                                                  if (audioConfigs
                                                                          .volume <
                                                                      0.91) {
                                                                    audioConfigs
                                                                            .volume +=
                                                                        0.1;
                                                                  }
                                                                },
                                                                icon: const Icon(
                                                                    Icons
                                                                        .arrow_circle_up_outlined,
                                                                    size: 50)),
                                                          )),
                                                    ),
                                                    Container(
                                                      height: 66,
                                                      width: 121,
                                                      child: Center(
                                                        child: Container(
                                                            height: 67,
                                                            width: 121,
                                                            child: Container(
                                                              child: IconButton(
                                                                  onPressed:
                                                                      () {},
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .arrow_circle_down_outlined,
                                                                      size:
                                                                          50)),
                                                            )),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 133,
                                            width: 241,
                                            child: Row(
                                              children: [
                                                Container(),
                                                Column(
                                                  children: [],
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 133,
                                            width: 241,
                                            child: Row(
                                              children: [
                                                Container(),
                                                Column(
                                                  children: [],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    color: beige1,
                                    height: 50,
                                    width: 241,
                                  ),
                                ),
                                Container(
                                  color: darkBlue2,
                                  height: 50,
                                  width: 241,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    color: beige1,
                                    height: 400,
                                    width: 241,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    color: beige2,
                                    height: 50,
                                    width: 241,
                                  ),
                                ),
                                Container(
                                  color: darkBlue2,
                                  height: 50,
                                  width: 241,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    color: beige2,
                                    height: 400,
                                    width: 241,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
