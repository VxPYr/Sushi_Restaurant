import 'package:flutter/material.dart';
import 'package:sushi_restaurant/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 43, 43),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 5,
            ),

            // shop name
            Text(
              'Sushi Restaurant',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // icon
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Image.asset('lib/images/sushi_pearl.png'),
            ),

            SizedBox(
              height: 10,
            ),

            // title
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: TextStyle(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // subtitle
            Text(
              'Feel the taste of Japan from anywhere and at anytime',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[300],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // get started button
            MyButton(
              text: 'Get Started',
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
