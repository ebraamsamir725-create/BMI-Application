import 'package:flutter/material.dart';
import 'package:flutter_application_12/card.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                // padding: const EdgeInsets.all(10.0),
                ///for text food and restaurants
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "food &restaurants",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //for the cards of food and restaurants
                  SizedBox(
                    height: 300,

                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        cards(
                          imaGe:
                              "https://i.abcnewsfe.com/a/a84ad13b-faa9-4205-868b-da6634c440d3/Chicken-TendersBuckets_1752500503886_hpMain_16x9.jpg?w=992",
                        ),
                        cards(
                          imaGe:
                              "https://bazookaegy.com/public/uploads/meals/s_1771513581232876.jpeg",
                        ),
                        cards(
                          imaGe:
                              "https://assets.bonappetit.com/photos/61ba70da510874520d257b78/1:1/w_1067,h_1067,c_limit/LEDE_Oma's%20Hideaway,%20Credit%20Christine%20Dong.jpg",
                        ),

                        cards(
                          imaGe:
                              "https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2026/01/931/523/mcdonalds-food-on-table.jpg?ve=1&tl=1",
                        ),
                      ],
                    ),
                  ),
                  //for the icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      iconss(
                        icoons:
                            "https://cdn-icons-png.flaticon.com/256/1409/1409790.png",
                      ),
                      iconss(
                        icoons:
                            "https://bf1af2.akinoncloudcdn.com/products/2024/09/19/50808/0f29f2e6-21e5-46b6-9003-b278b45adc62_size256_cropCenter.jpg",
                      ),
                      iconss(
                        icoons:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX6EkqfqAP0rcbnqPLs5zMUgeRBeZa67moR_PXUWxhgQ&s=10",
                      ),
                      iconss(
                        icoons:
                            "https://cdn-icons-png.magnific.com/256/2304/2304534.png?semt=ais_white_label",
                      ),
                      iconss(
                        icoons:
                            "https://www.rasalkhaimahzipline.com/wp-content/uploads/2026/03/ticket_4522830.png",
                      ),
                      //
                    ],
                  ),
                  //for the trips
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "trips",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        cardsfor(
                          immage:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVDD0jhsVfv6YdRpv5Kexx-yoVnFtQHdzIfTskkBzI4vKPdnHB5iAQAd3s&s=10",
                          describtion: "trip to north cost",
                        ),
                        cardsfor(
                          immage:
                              "https://www.tripsinegypt.com/wp-content/uploads/2023/10/how-to-spend-3-days-in-egypt-trips-in-egypt.jpg",
                          describtion: "trip to pyramids",
                        ),
                        cardsfor(
                          immage:
                              "https://cdn.getyourguide.com/img/tour/8d0cab4305d3218b92abfa1f9bdccb1689eebbad6608ea3cb8a6146e3116a929.jpg/68.jpg",
                          describtion: "trip to hurghada",
                        ),
                        cardsfor(
                          immage:
                              "https://www.egypttoursportal.com/images/2020/10/Trip-to-Mount-Sinai-St.-Catherine-Monastery-From-Cairo-Egypt-Tours-Portal.jpg",
                          describtion: "trip to st catherine",
                        ),
                      ],
                    ),
                  ),

                  //for the places to hang out
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "places to hang out",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        cards(
                          imaGe:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzPI-djlcE-emn0iX0r7vWwpRqRfqPcbIQVrOkmfKGPQg0sZsmmbpldBo&s=10",
                        ),
                        cards(
                          imaGe:
                              "https://www.citystars-heliopolis.com.eg/public/images/store_facade_image/SklAMXfnfx-main-v2-v2.jpg?1497370825773",
                        ),
                        cards(
                          imaGe:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4MDs8cwa6YmTNQHkwlwKvcRLShrmRbApq18IwjZqGaJc3MT_-N-Zwj-Q&s=10",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
