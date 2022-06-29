import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GroomingBar extends StatefulWidget {
  const GroomingBar({Key? key}) : super(key: key);

  @override
  State<GroomingBar> createState() => _GroomingBarState();
}

class _GroomingBarState extends State<GroomingBar> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                ),
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(height: 240, color: Colors.black),
                ),
                Positioned(
                  top: 90,
                  left: 18,
                  right: 18,
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const Positioned(
                    top: 20,
                    right: 15,
                    child:  Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    )),
                Positioned(
                    top: 120,
                    left: 150,
                    child: Image.asset("assets/images/man.png")),
                Positioned(
                    top: 180,
                    left: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Welcome to Grooming Bar",
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Festus Uponaye",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
              
                Positioned(
                  top: 280,
                  left: 35,
                  child: Row(
                    children: [
                      Column(
                        children: [
                           Text(
                            "20",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                           SizedBox(
                            height: 7,
                          ),
                     Text(
                            "Booking Reserved",
                            style:  TextStyle(fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                           Text(
                            "70",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            "Check-in this month",
                            style: const TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                           Text(
                            "0",
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                           SizedBox(
                            height: 7,
                          ),
                           Text(
                            "Investory Item",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Image.asset("assets/images/scan.png"),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Kindly Scan to Check-in",
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    barTile(
                        "Booking\n Appointment", "assets/images/calendar.png"),
                    barTile("Plans", "assets/images/card.png"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    barTile("Check\ services", "assets/images/entypo.png"),
                    barTile("Profile", "assets/images/profile.png"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget barTile(String title, image) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 150,
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0xFFAD2401), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final curvePath = Path();
    final firstLineOffset = Offset(0, size.height - 100);
    final givenPoint = Offset(size.width, size.height - 100);
    final controlPoint = Offset(size.width / 2, size.height + 25); 
    curvePath.lineTo(firstLineOffset.dx, firstLineOffset.dy);
    curvePath.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      givenPoint.dx,
      givenPoint.dy,
    );
    curvePath.lineTo(size.width, 0);
    curvePath.close();
    return curvePath;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
