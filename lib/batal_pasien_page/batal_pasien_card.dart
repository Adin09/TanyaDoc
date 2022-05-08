import 'package:flutter/material.dart';

class HistoryCards extends StatelessWidget {
  const HistoryCards({Key? key}) : super(key: key);
  // 1
  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.date_range_rounded,
                      size: 40,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "At",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Text(
                      "Senin",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Harapan Bunda",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  Icons.check_circle,
                  size: 30,
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "10:00 AM",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),

        // 1
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        // 2
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 165,
        ),
        // 3
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFBDBDBD),
              spreadRadius: 0.0001,
              blurRadius: 10,
              offset: Offset(5, 5), // changes position of shadow
            ),
          ],
          // gradient: LinearGradient(
          //   colors: [const Color(0xFFBBDEFB), Colors.white],
          //   begin: FractionalOffset.bottomLeft,
          //   end: FractionalOffset.topRight,
          //   stops: [0.0, 1.0],
          //   tileMode: TileMode.clamp,
          //),
        ),
      ),
    );
  }
}
