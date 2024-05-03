import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Stack(children: [
                ImageSlideshow(
                  indicatorColor: Colors.blue,
                  onPageChanged: (value) {
                    debugPrint('Page changed: $value');
                  },
                  children: [
                    Image.asset(
                      'assets/poulet.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/gozemsecond.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/pouletfrite.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                  autoPlayInterval: 3000,
                  isLoop: true,
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 205, 228, 246),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: Image.asset("assets/weath_wallet.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Portefeuille"),
                            Text(
                              "1000 F",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 150,
                          height: 30,
                          child: ElevatedButton.icon(
                            onPressed: () => print('click button'),
                            label: Text('Recharger'),
                            icon: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Center(
                    child: Row(
                      children: [
                        Content(imageUrl: "assets/zem.png", title: 'Zem'),
                        Content(
                            imageUrl: "assets/voiture.png", title: 'Voiture'),
                        Content(
                            imageUrl: "assets/tricycle.png", title: 'Tricycle'),
                        Content(imageUrl: "assets/course.png", title: 'Course'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Center(
                    child: Row(
                      children: [
                        Content(
                            imageUrl: "assets/rechargecred.png",
                            title: 'Recharger'),
                        Content(
                          imageUrl: 'assets/coursier.png',
                          title: 'Coursier',
                        ),
                        Content(
                          imageUrl: 'assets/billeterie.png',
                          title: 'Billeterie',
                        ),
                        Content(
                          imageUrl: 'assets/food.png',
                          title: 'Food',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Center(
                    child: Row(
                      children: [
                        Content(
                            imageUrl: "assets/shopping.png", title: 'Shopping'),
                        Content(
                          imageUrl: 'assets/gaz.png',
                          title: 'Gaz',
                        ),
                        Content(
                          imageUrl: 'assets/aide.png',
                          title: 'Aide',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row()
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  final String title;
  final String imageUrl;
  const Content({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Color.fromARGB(3, 247, 245, 245),
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.cover)),
          ),
          Text(title,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                overflow: TextOverflow.ellipsis,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  //Les attributs
  final String title;
  final String imageUrl;
  const Item({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(3, 247, 245, 245),
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(imageUrl),
                                fit: BoxFit.cover)),
                      ),
                      Text(title)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(3, 247, 245, 245),
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage('assets/gaz.png'),
                                fit: BoxFit.cover)),
                      ),
                      Text("Gaz")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(3, 247, 245, 245),
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage('assets/aide.png'),
                                fit: BoxFit.cover)),
                      ),
                      Text("Aide")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
