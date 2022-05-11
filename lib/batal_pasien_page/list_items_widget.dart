import 'package:flutter/material.dart';
import 'package:tanya_doc/batal_pasien_page/list/list_card.dart';
import 'package:tanya_doc/batal_pasien_page/list/list_itemss.dart';

class ListItemWidget extends StatelessWidget {
  final ListItem item;
  final Animation<double> animation;
  final VoidCallback? onClicked;

  const ListItemWidget({
    required this.item,
    required this.animation,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizeTransition(
        sizeFactor: animation,
        child: buildItem(),
      );

  Widget buildItem() => Container(
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
          child: ListTile(
              contentPadding: EdgeInsets.all(16),
              leading: Icon(
                Icons.calendar_month,
                color: Colors.purple,
              ),
              title: Text(
                item.hari,
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                item.hosptl,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
              trailing: IconButton(
                  onPressed: onClicked,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ))),
        ),
      );
}
