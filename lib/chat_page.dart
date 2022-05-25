import 'package:flutter/material.dart';
import 'package:tanya_doc/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset(
                  'assets/back.png',
                  width: 35,
                ),
              ),
              Text(
                'Ilham',
                style: blackStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kprimeColor,
                ),
              ),
              Image.asset(
                'assets/x.png',
                width: 25,
              ),
            ],
          ),
        ),
      );
    }

    Widget chat() {
      return Align(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 80,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: kprimeColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  'assets/send.png',
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          appBar(),
          const Spacer(),
          chat(),
        ],
      ),
    );
  }
}
