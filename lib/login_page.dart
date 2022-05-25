import 'package:flutter/material.dart';
import 'package:tanya_doc/home_page.dart';
import 'package:tanya_doc/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget background() => Image.asset(
      'assets/background.png',
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );

    Widget logo() => Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children : [Image.asset(
            'assets/logo.png',
            width: 250,
          ),
            const SizedBox(
              height: 20,
            ),
            Text("TanyaDoc", style: bluekStyle.copyWith(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );

    Widget content() => Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 18),
              border: InputBorder.none,
              hintText: 'Name',
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 18),
              border: InputBorder.none,
              hintText: 'Password',
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );

    Widget button() => Center(
<<<<<<< HEAD
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Container(
              height: 52,
              width: 180,
              decoration: BoxDecoration(
                color: kpinkColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: whiteStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
=======
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>Home()));
        },
        child: Container(
          height: 52,
          width: 180,
          decoration: BoxDecoration(
            color: kpinkColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              'Login',
              style: whiteStyle.copyWith(
                fontWeight: FontWeight.w600,
>>>>>>> Adin
              ),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xffE3F0FF),
      body: SafeArea(
        child: Stack(
          children: [
            background(),
            ListView(
              children: [
                logo(),
                content(),
                button(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
