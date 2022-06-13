import 'package:flutter/material.dart';
import 'package:match/comentary.dart';

class TabContent extends StatefulWidget {
  const TabContent({Key? key}) : super(key: key);

  @override
  State<TabContent> createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const Positioned(
                top: 10,
                left: 170,
                child: Text(
                  "UCL",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                )),
            Positioned(
              left: 160,
              top: 50,
              child: Row(
                children: const [
                  Text(
                    "0",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.remove),
                  Text("2",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Positioned(
                top: 90,
                left: 170,
                child: Text("81'", style: TextStyle(fontSize: 20))),
            Image.asset("assets/images/Rectangle.png"),
            Positioned(
                left: 30,
                top: 20,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/bvn.png",
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "B.Dortmond",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )),
            Positioned(
                left: 280,
                top: 20,
                child: Column(
                  children: [
                    Image.asset("assets/images/Chelsea.png"),
                    const SizedBox(height: 5),
                    const Text(
                      "Chelsea",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          width: 320,
          height: 290,
          decoration: BoxDecoration(
              color: const Color(0xFFD5D8DE),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Rate(38, "Possessions(%)", 62),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ProgressBar(
                      color1: Colors.grey,
                      color2: Colors.white,
                      values: 0.5,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ProgressBar(
                      color1: Colors.red,
                      color2: Colors.grey,
                      values: 0.6,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Rate(9, "Short on target", 8),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ProgressBar(
                      color1: Colors.grey,
                      color2: Colors.red,
                      values: 0.3,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ProgressBar(
                      color1: Colors.white,
                      color2: Colors.grey,
                      values: 0.6,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Rate(7, "Short off target", 10),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ProgressBar(
                      color1: Colors.grey,
                      color2: Colors.white,
                      values: 0.5,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ProgressBar(
                      color1: Colors.red,
                      color2: Colors.grey,
                      values: 0.7,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Rate(3, "Blocked Shots", 1),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ProgressBar(
                      color1: Colors.grey,
                      color2: Colors.red,
                      values: 0.3,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ProgressBar(
                      color1: Colors.white,
                      color2: Colors.grey,
                      values: 0.4,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Rate(2, "Offsides", 2),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ProgressBar(
                      color1: Colors.grey,
                      color2: Colors.red,
                      values: 0.5,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ProgressBar(
                      color1: Colors.red,
                      color2: Colors.grey,
                      values: 0.5,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Rate(7, "Corner kicks", 6),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ProgressBar(
                      color1: Colors.grey,
                      color2: Colors.red,
                      values: 0.4,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ProgressBar(
                      color1: Colors.white,
                      color2: Colors.grey,
                      values: 0.5,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Rate(24, "Throw ins", 21)
              ],
            ),
          ),
        )
      ],
    );
  }
}
