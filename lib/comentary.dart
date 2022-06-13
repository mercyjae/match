import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double values;
  final Color color1;
  final Color color2;

  const ProgressBar(
      {Key? key,
      required this.color1,
      required this.color2,
      required this.values})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 142,
        child: LinearProgressIndicator(
            value: values,
            valueColor: AlwaysStoppedAnimation<Color>(color1),
            backgroundColor: color2));
  }
}

class Rate extends StatelessWidget {
  final int text1;
  final String text2;
  final int text3;

  const Rate(this.text1, this.text2, this.text3);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1.toString(),
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          text2,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          text3.toString(),
          style: const TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

class CommentTile extends StatelessWidget {
  final String text;

  const CommentTile({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Image.asset("assets/images/lady.png"),
            const Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color(0xFF00BB59),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                    color: Color(0xffC4C4C4), shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                    color: Color(0xffC4C4C4), shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                    color: Color(0xffC4C4C4), shape: BoxShape.circle),
              )
            ],
          ),
        ),
      ],
    );
  }
}
