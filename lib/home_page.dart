// ignore: file_names
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tanya_doc/chat_page.dart';
import 'package:tanya_doc/informasi_page.dart';
import 'package:tanya_doc/jadwal_page.dart';
import 'package:tanya_doc/kontak_page.dart';
import 'package:tanya_doc/setting_page.dart';
import 'package:tanya_doc/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget background() => Image.asset(
          'assets/home.png',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        );

    Widget content() => Container(
          width: MediaQuery.of(context).size.width,
          height: 450,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InformasiPage(),
                              ),
                            ),
                            child: Container(
                              height: 160,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: kwhiteColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/informasi.png',
                                    width: 70,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Informasi',
                                    style: bluekStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _bottomSheet(context);
                            },
                            child: Container(
                              height: 160,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: kwhiteColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/daftar.png',
                                    width: 75,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Kontak ',
                                    style: bluekStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 160,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: kwhiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/map.png',
                                  width: 70,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Map',
                                  style: bluekStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const JadwalPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 160,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: kwhiteColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/jadwal.png',
                                    width: 70,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Jadwal',
                                    style: bluekStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );

    Widget buttombar() {
      return Container(
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        padding: const EdgeInsets.only(left: 40, right: 40, top: 5, bottom: 5),
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kwhiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChatPage()));
              },
              child: const CustomBottomNavigationItem(
                imageUrl: 'assets/chat.png',
                size: 30,
                text: 'Chat',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const CustomBottomNavigationItem(
                imageUrl: 'assets/home-icon.png',
                size: 35,
                text: 'Home',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingPage()));
              },
              child: const CustomBottomNavigationItem(
                imageUrl: 'assets/profile.png',
                size: 35,
                text: 'Profile',
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            background(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                content(),
                buttombar(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final double size;
  final String text;
  const CustomBottomNavigationItem({
    Key? key,
    required this.imageUrl,
    required this.size,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: size,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          text,
          style: blackStyle.copyWith(),
        )
      ],
    );
  }
}

void _bottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Container(
        height: MediaQuery.of(context).size.height * .60,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: kwhiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kontak dokter',
                  style: blackStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/x.png',
                    width: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PersonContact(),
                PersonContact(),
                PersonContact(),
                PersonContact(),
                PersonContact(),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PersonContact(),
                PersonContact(),
                PersonContact(),
                PersonContact(),
                PersonContact(),
              ],
            )
          ],
        ),
      );
    },
  );
}
