import 'package:flutter/material.dart';
import 'package:match/comentary.dart';
import 'package:match/outcome.dart';
import 'package:match/tab_content.dart';

class TodaysLive extends StatefulWidget {
  const TodaysLive({Key? key}) : super(key: key);

  @override
  State<TodaysLive> createState() => _TodaysLiveState();
}

class _TodaysLiveState extends State<TodaysLive> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              title: const Text(
                "Today's Live",
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              centerTitle: true,
              bottom: const TabBar(
                labelColor: Colors.red,
                indicatorColor: Colors.red,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: "Summary"),
                  Tab(text: "Stats"),
                  Tab(text: "Line-ups"),
                ],
              ),
            ),
            body: const Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: TabBarView(
                children: [
                  Center(child: Text("Commentary")),
                  TabContent(),
                  Center(child: Text("Linesup"))
                ],
              ),
            )));
  }
}
