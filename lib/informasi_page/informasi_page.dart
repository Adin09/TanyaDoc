import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Informasi extends StatefulWidget {
  const Informasi({Key? key}) : super(key: key);

  @override
  State<Informasi> createState() => _Informasi();
}

class _Informasi extends State<Informasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Informasi",
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.purple),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      "APR 19, 2022",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFFCBCDFB),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Container(
                          child: Text(
                            "Title: A Night In The Jungle",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: Container(
                          child: Text(
                            "Brief: A brave young man decides to go on an expedition but things don’t go as planned",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          child: Text(
                            "     The howling of the wing was the first thing that woke him. The second was the sound of his stomach growling, reminding him that it hadn’t been fed since he had left home. He looked over at the clock and saw that it was already five in the morning. He had been sleeping for only four hours.\n\n     He had been camping in the forest that day, and it was only when he tried to go home that the howling had started. The howling was so loud that he couldnt hear the truck engine, and it was only when he returned to the fores",
                            style:
                                TextStyle(color: Colors.purple, fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            width: double.infinity,
            height: 500,
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
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  child: Icon(
                    Icons.delete_outlined,
                    color: Colors.purple,
                    size: 30,
                  ),
                  width: 80,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFFCBCDFB),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.purple,
                    size: 30,
                  ),
                  width: 80,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFFCBCDFB),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  child: Center(
                    child: Text(
                      "Keep Writing",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  width: 180,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFF917AE5),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
