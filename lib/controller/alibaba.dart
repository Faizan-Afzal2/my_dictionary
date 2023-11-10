// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // YEH KYA KAR RAHI HO ALISHBA??!!
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ali Express",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Maven',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 30,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Alishba Ali   006-DCFB-01",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.window_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),

        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       Container(
        //         height: 50,
        //         width: double.infinity,
        //         color: Colors.white30,
        //         child: Text("All Categories"),
        //       ),
        //       Container(
        //         height: 50,
        //         width: double.infinity,
        //         color: Colors.white30,
        //         child: Text("Home"),
        //       ),
        //       Container(
        //         height: 50,
        //         width: double.infinity,
        //         color: Colors.white30,
        //         child: Text("Home"),
        //       ),
        //       Container(
        //         height: 50,
        //         width: double.infinity,
        //         color: Colors.white30,
        //         child: Text("Home"),
        //       ),
        //     ],
        //   ),
        // ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "All Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: "Maven",
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Kitchen Products",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Men's Clothing",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Hair Extensions",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Consumer Electronics",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Women's Clothing",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Home Appliances",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Shoes",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Sports & Entertainment",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Baby Products",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Beauty Products",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Furniture",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Pets Essentials",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Local Brands",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white30,
                child: Text(
                  "Jewelery & Watches",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "6 Days Left | 11.11 Sale Coming Soon | Our Best Deals of the Year ->",
                    style: TextStyle(
                      fontFamily: 'Maven',
                      color: Colors.pink,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              // BETTER CHOICES BETTER PRICES WALI ROW

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Better Choices,\nBetter Prices",
                    style: TextStyle(
                      fontFamily: 'Geologica',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on,
                          size: 30, color: Colors.black),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Value For Money",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text("We Offer Competitive Prices on\nmillion of items",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(Icons.person_4_sharp, size: 30, color: Colors.black),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Shoppers Worldwide",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "More than 300 million shoppers\nfrom 200+ countries & regions",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(Icons.delivery_dining,
                          size: 30, color: Colors.black),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Fast Delivery",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Faster delivery on selected items\nthanks to our improved logistics",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(Icons.add_card_outlined,
                          size: 30, color: Colors.black),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Safe Payment",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Safe payment methods preffered\nby international shoppers",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(Icons.health_and_safety_outlined,
                          size: 30, color: Colors.black),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Buyer Protection",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Get a refund if items arrive late\nor not as described",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(Icons.phone_android_outlined,
                          size: 30, color: Colors.black),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Download\nAliExpress App",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Shop anywhere & anytime",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                          )),
                    ],
                  ),
                ],
              ),

              // HOME APPLIANCES WALI ROW :)

              Wrap(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 10,
                      ),
                      Text(
                        "Home Appliances",
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/cooker.jpg",
                            height: 200,
                            width: 240,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Induction Cookers",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/kettle.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Electric Esspresso\nPots",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/exhaust.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Exhaust Fans",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/electricbev.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Electric Beverage\nWarmer",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/mist.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Dehumidifier",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),

              Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/brush.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Toothbrushes\nHeads",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/heater.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Electric Fireplace",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/dispenser.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Cloth Dryer",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/icecrush.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Ice Crusher",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/hairdryer.jpg",
                              height: 200,
                              width: 240,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Hair dryer",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // MORE ITEMSS

              SizedBox(
                height: 20,
              ),
              Wrap(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 10,
                      ),
                      Text(
                        "Best Sellers",
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Column(
                      //   children: [
                      //     Container(
                      //       height: 180,
                      //       width: 200,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(30),
                      //         image: DecorationImage(
                      //           image: AssetImage("assets/images/1.jpg"),
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(height: 5,),
                      //     Text(
                      //       "Electric Fireplace",
                      //       style: TextStyle(
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //   ],
                      // )

                      //1

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/1.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "kemei 2299 Barber Cordle...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "251 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 3,771.49",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 12,511.49",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,504",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //2
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/2.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Vintagr T9 Hair Trimmer...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "298 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 904.96",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                // SizedBox(width: 5),
                                // Text("PKR 12,511.49",
                                //   style: TextStyle(
                                //     fontSize: 13,
                                //     decoration: TextDecoration.lineThrough,
                                //     fontFamily: 'Roboto',
                                //     color: Colors.grey,
                                //   ),
                                // ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  11.11 Sale  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 off ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //3
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/3.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Jianpai Adult Black White...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "100K+ Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 1,641.18",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 5,046.35",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Low Price...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //4
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/4.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Food Processor Container...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "248 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 9,997.12",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 18,616.49",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,584",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //5
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/5.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Oral Irrigator Portable...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "10,000 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 2,385.75",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 8,754.98",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,504",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              //TOP SELLINGG

              Wrap(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 10,
                      ),
                      Text(
                        "Top Selling",
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

// ROW 2

              Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //1

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/11.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Ionic Hair Dryer...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "251 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 3,771.49",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 12,511.49",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,504",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //2
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/12.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Kinscoter Aroma Diffuser...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "298 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 3,268.09",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 12,511.49",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  11.11 Sale  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 off ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //3
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/13.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Aifen Hair Dryer High...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "100K+ Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 11,641.18",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 15,046.35",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Low Price...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //4
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/14.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "RGB Flame Aroma Diffuser",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "10k+ Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 9,997.12",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 18,616.49",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,584",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //5
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/15.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Automatic Floor Cleaner...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "10,000 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 2,385.75",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 8,754.98",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,504",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              //ROW 3

              Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //1

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/6.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Portable Washing Machine...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "1000+ Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 12,765.15",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 38,457.98",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 off ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,874",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //2
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/7.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Ali express Collection Electruc ...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "183 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 3,876.08",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 10,315.98",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Low price on Nov...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,765",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //3
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/8.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Electric Salt & Pepper ...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "43 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 3,165.32",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 8,876.09",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Low Price on Nov...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //4
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/9.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Multi-functional Fan...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "207 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 4,213.98",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 11,610.76",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Low Prices on Nov...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,584",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //5
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/10.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Portable Frying Pan...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "765 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 2,385.75",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 8,754.98",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,504",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // ROW 4

              Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //1

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/16.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Portable Fruit Juice Blender...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "251 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 3,771.49",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 12,511.49",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,504",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //2
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/17.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "KINSCOTER Electric Heater...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "298 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 62,904.96",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 89,511.49",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  11.11 Sale  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 off ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //3
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "assets/images/18.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Automatic Cleaning Mop...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "100K+ Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 9,641.18",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 12,046.35",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Low Price...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //4
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/19.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Sonic Electric teeth Brush..",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                Icon(Icons.star_border,
                                    size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "248 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 1,997.12",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 6,616.49",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,584",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //5
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/20.jpg",
                                height: 160,
                                width: 190,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Household Window Cleaner...",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                Icon(Icons.star, size: 15, color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "10,000 Sold",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "PKR 2,385.75",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 8,754.98",
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "  Welcome Deal  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "PKR 1,412.35 ...",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Free Shipping over PKR 2,504",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
