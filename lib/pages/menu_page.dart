import 'package:flutter/material.dart';
import 'package:sushi_restaurant/components/button.dart';
import 'package:sushi_restaurant/models/food.dart';
import 'package:sushi_restaurant/theme/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
        name: 'Rice Cake',
        price: '5',
        imagePath: 'lib/images/ricecake.png',
        rating: '4.6'),
    Food(
        name: 'BentoBox',
        price: '15',
        imagePath: 'lib/images/bentobox.png',
        rating: '4.8')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Icon(
            Icons.menu,
            color: Colors.grey[900],
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Text(
            'Tokyo',
            style: TextStyle(color: Colors.grey[900]),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // promo banner
            Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // text
                        Text(
                          'Get 32% Promo',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        // redeem button
                        MyButton(text: 'Redeem', onTap: () {})
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Image.asset(
                      'lib/images/three_sushi.png',
                      height: 140,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search here..',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // menu list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                'Food Menu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                  food: foodMenu[index],
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            //popular food
            Container(
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // image
                  Row(
                    children: [
                      Image.asset(
                        'lib/images/sushi_pearl.png',
                        height: 100,
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      // name+price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // dish name
                          Text(
                            'Salmon Eggs',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          // price
                          Text(
                            '\$21.00',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Icon(
                    Icons.favorite_border,
                    size: 40,
                    color: Colors.white60,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
