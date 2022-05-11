import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tanya_doc/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
          height: 500,
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
                          child: InkWell(
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
                            onTap: () =>
                          {Navigator.pushNamed(context, '/BatalPasien')},
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: InkWell(
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
                          child: InkWell(
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
                            onTap: () =>
                                {Navigator.pushNamed(context, '/BatalPasien')},
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

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            background(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                content(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
