import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget background() => Image.asset(
      'assets/background.png',
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );

    Widget logo()=>Center(
      child: Padding(
        padding: const EdgeInsets.only(top:50),
        child: Image.asset(
          'assets/logo.png', 
          width: 200,
          ),
      ),
    );


    return Scaffold(
      body: SafeArea(
        child: Stack( 
          children: [
            background(),
            ListView(
              children: [
                logo(),
              ],
            )
          ],
          ),
        ),
      );
    
      
    
  }
}