import 'package:flutter/material.dart';
import 'package:match/comentary.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          "Comments",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          const CommentTile(
            text:
                "At the end of the day, going forward,\nat a new normal that has evolved",
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CommentTile(
                text:
                    "At the end of the day, going\nforward at a new normal that has\n"
                    "evolved from generation X on the\nrunaway headings towards"),
          ),
          Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
                color: const Color(0xffE6E6E6),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.emoji_emotions_outlined,
                            color: Colors.grey),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Comment",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        // suffixIcon: Icon(Icons.emoji_emotions)
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Post",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
                color: Color(0xFFAD2401),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/profile.png"),
                Center(
                  child: Text(
                    "Booking\n Appointment", textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15, color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
