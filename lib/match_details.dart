import 'package:flutter/material.dart';


class MatchDetails extends StatefulWidget {
  const MatchDetails({Key? key}) : super(key: key);

  @override
  State<MatchDetails> createState() => _MatchDetailsState();
}

class _MatchDetailsState extends State<MatchDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Match Details",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/league.png"),
              const SizedBox(
                width: 3,
              ),
              const Text(
                "UEFA Champions League",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Group Stage(Matchday 1)",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          Card(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
              child: Stack(
                children: [
                  Positioned(
                    left: 120,
                    top: 35,
                    child: Row(
                      children: const [
                        Text("0",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600)),
                        Icon(Icons.remove),
                        Text("2",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                  const Positioned(
                      top: 80,
                      left: 110,
                      child: Text("FULL TIME",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ))),
                  Image.asset("assets/images/Rectangle.png"),
                  Positioned(
                      left: 10,
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
                      left: 220,
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
            ),
          ),
          Column(
            children: [
              DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      const TabBar(
                        labelColor: Colors.red,
                        indicatorColor: Colors.red,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: "Summary"),
                          Tab(text: "Stats"),
                          Tab(text: "Line-ups")
                        ],
                      ),
                      Container(
                          height: 400,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text("Full Commentary",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.grey)),
                                            child: Center(
                                                child: Image.asset(
                                                    "assets/images/chat.png")),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("81'"),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: 1,
                                            height: 70,
                                            color: Colors.black,
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.0, bottom: 30),
                                        child: Text(
                                          "Good effort! Reus with a decent effort after\nRobertson's cutback,"
                                          " but the German can't keep his\n"
                                          "shot down and it flies just over the crossbar. That\n"
                                          "makes it 9th efforts at goal today by Borussia\nDortmund",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              height: 2),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.grey)),
                                            child: Center(
                                                child: Image.asset(
                                                    "assets/images/arrow.png")),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("76'"),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: 1,
                                            height: 50,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 50),
                                        child: Text(
                                          "Borussia Dortmund make their second and final\nsubstitution, "
                                          "with Emre Can coming off the "
                                          "pitch\nand he has beeb replaced by Axeal Witsel.",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              height: 2),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Center(
                              child: Text('Display Tab 2',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const Center(
                              child: Text('Display Tab 3',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ]))
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
