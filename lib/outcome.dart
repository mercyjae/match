import 'package:flutter/material.dart';

class Outcome extends StatefulWidget {
  const Outcome({Key? key}) : super(key: key);

  @override
  State<Outcome> createState() => _OutcomeState();
}

class _OutcomeState extends State<Outcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Container(
            width: double.infinity,
            height: 580,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 50,
                        height: 2,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Match Outcome",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/bvn.png",
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                "B.Dortmond",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "1",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "x",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "2",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/images/Chelsea.png"),
                              const SizedBox(height: 15),
                              const Text(
                                "Chelsea",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Scoreline",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text("-"),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("0"),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: 45,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Color(0xffFDE100),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12)),
                                ),
                                child: const Center(
                                    child: Text(
                                  "1",
                                  style: TextStyle(color: Colors.white),
                                ))),
                            const Text("2"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("3"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("4"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("5"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("6"),
                            const SizedBox(height: 15),
                            const Text("7"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("8"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("9"),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/bvn.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "B.Dortmond",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: const [
                            Text(
                              "1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              ":",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/Chelsea.png"),
                            const SizedBox(height: 10),
                            const Text(
                              "Chelsea",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            const Text("-"),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("0"),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("1"),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: 45,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Color(0xff034694),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12)),
                                ),
                                child: const Center(
                                    child: Text(
                                  "2",
                                  style: TextStyle(color: Colors.white),
                                ))),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("3"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("4"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("5"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("6"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("7"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("8"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("9"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("SUBMIT"),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff00000033))),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
