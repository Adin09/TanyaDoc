import 'package:flutter/material.dart';
import 'package:tanya_doc/kontak/list/list_class.dart';

class ListContactWidget extends StatelessWidget {
  final ListKontak kontak;
  final Animation<double> animation;
  final VoidCallback? onClicked;

  const ListContactWidget({
    required this.kontak,
    required this.animation,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizeTransition(
        sizeFactor: animation,
        child: buildItem(context),
      );

  Widget buildItem(BuildContext context) => Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: Color(0xFFBDBDBD),
            //     spreadRadius: 0.0001,
            //     blurRadius: 10,
            //     offset: Offset(5, 5), // changes position of shadow
            //   ),
            // ],
          ),
          child: Container(
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
                  kontak.namaDoc,
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  kontak.spesialist,
                  style: TextStyle(color: Colors.purple),
                ),
                trailing: InkWell(
                  onTap: () => {Navigator.pushNamed(context, '/chat')},
                  child: Icon(
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
          ),
        ),
      );
}
