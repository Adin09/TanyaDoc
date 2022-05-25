import 'package:flutter/material.dart';
import 'package:tanya_doc/theme.dart';

class InformasiPage extends StatelessWidget {
  const InformasiPage({Key? key}) : super(key: key);

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
                'Informasi',
                style: blackStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kprimeColor,
                ),
              ),
              Image.asset(
                'assets/x.png',
                width: 25,
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          Container(
            height: 550,
            width: MediaQuery.of(context).size.width,
            margin:
                const EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              color: kwhiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 40,
                    width: 140,
                    margin: const EdgeInsets.only(top: 30),
                    decoration: const BoxDecoration(
                      color: kpinkColor,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'APR 19, 2021',
                        style: whiteStyle.copyWith(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Title: A Night In The Jungle',
                        style: blackStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Brief: A brave young man decides to go on an expedition but things don’t go as planned',
                        style: blackStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        '   The howling of the wing was the first thing that woke him. The second was the sound of his stomach growling, reminding him that it hadn’t been fed since he had left home. He looked over at the clock and saw that it was already five in the morning. He had been sleeping for only four hours.',
                        style: blackStyle.copyWith(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '   He had been camping in the forest that day, and it was only when he tried to go home that the howling had started. The howling was so loud that he couldn’t hear the truck engine, and it was only when he returned to the fores',
                        style: blackStyle.copyWith(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Story',
                        style: blackStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/story.png',
                        width: 25,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/trash.png',
                      width: 70,
                    ),
                    Image.asset(
                      'assets/share.png',
                      width: 70,
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 210,
                  decoration: BoxDecoration(
                    color: kprimeColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                      child: Text(
                    'Keep Writing',
                    style: whiteStyle.copyWith(),
                  )),
                ),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          appBar(),
          content(),
        ],
      ),
    );
  }
}
