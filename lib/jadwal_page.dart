import 'package:flutter/material.dart';
import 'package:tanya_doc/theme.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({Key? key}) : super(key: key);

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
                'Jadwal',
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
      return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CardJadwal(),
            CardJadwal(),
            CardJadwal(),
            CardJadwal(),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          appBar(),
          content(),
        ],
      ),
    );
  }
}

class CardJadwal extends StatelessWidget {
  const CardJadwal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kwhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/book.png',
                    width: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Senin',
                    style: blackStyle.copyWith(fontSize: 18),
                  ),
                ],
              ),
              Image.asset(
                'assets/ok.png',
                width: 25,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              'harapan bunda',
              style: blackStyle.copyWith(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '8:00 AM',
              style: blackStyle.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
