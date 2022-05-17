import 'package:flutter/material.dart';

class CardKontak extends StatelessWidget {
  const CardKontak({Key? key}) : super(key: key);
  // 1
  final String name = 'Admin User';
  final String adress = 'untuk konsumsi Sendiri';
  final int phoneNumber = 082201748822;

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: Container(
        padding: EdgeInsets.all(10),
        child: ListTile(
          dense: true,
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          title: Text(
            'Dr. Al Yafi',
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Bone Specialist',
            style: TextStyle(color: Colors.purple),
          ),
          trailing: IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.chat_rounded,
              color: Colors.green,
              size: 30,
            ),
          ),
        ),
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
