import 'package:flutter/material.dart';
import 'package:tanya_doc/theme.dart';

class PersonContact extends StatelessWidget {
  const PersonContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: kprimeColor,
            borderRadius: BorderRadius.circular(60),
            image: const DecorationImage(
              image: AssetImage('assets/person1.png'),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Chiara\nLecco',
          style: blackStyle.copyWith(),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
