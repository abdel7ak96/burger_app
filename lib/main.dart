import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _favored = false;

  void _favor() {
    setState(() {
      _favored = !_favored;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                height: 210.0,
                child: Carousel(
                  animationCurve: Curves.easeInQuart,
                  animationDuration: Duration(seconds: 1),
                  autoplayDuration: Duration(seconds: 5),
                  dotSize: 5.0,
                  dotIncreaseSize: 1.5,
                  dotSpacing: 10.0,
                  dotBgColor: Colors.transparent,
                  dotColor: Colors.grey,
                  dotIncreasedColor: Colors.white,
                  images: [
                    AssetImage('assets/images/carousel/1.jpg'),
                    AssetImage('assets/images/carousel/2.jpg'),
                    AssetImage('assets/images/carousel/3.jpg'),
                    AssetImage('assets/images/carousel/4.jpg'),
                    AssetImage('assets/images/carousel/5.jpg')
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite),
                    color: _favored ? Colors.red : Colors.grey.withOpacity(0.8),
                    onPressed: () {
                      _favor();
                    },
                  )
                ],
              ),
              Positioned(
                top: 180.0,
                left: 15.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.8),
                      size: 15.0,
                    ),
                    SizedBox(width: 5.0),
                    Text('4,2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OPEN NOW UNTIL 7PM',
                  style: TextStyle(
                      fontFamily: 'TwCen',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 8.0),
                  child: Text(
                    'The Cinnamon Snail',
                    style: TextStyle(
                        fontFamily: 'TwCen',
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '7th st & Union Sq East',
                      style: TextStyle(
                          fontFamily: 'TwCen',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.6)),
                    ),
                    Spacer(),
                    Icon(Icons.location_on, size: 15.0, color: Colors.black54),
                    Text(
                      '400ft Away',
                      style: TextStyle(
                          fontFamily: 'TwCen',
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.rss_feed,
                        size: 17.0,
                        color: Colors.teal[800],
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Location confirmed by 3 users today',
                        style: TextStyle(
                            fontFamily: 'TwCen',
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.teal[800]),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 3.0,
                    width: 50.0,
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    decoration: BoxDecoration(color: Colors.black12)),
                Text(
                  'FEATURED ITEMS',
                  style: TextStyle(
                      fontFamily: 'TwCen',
                      fontWeight: FontWeight.bold,
                      color: Colors.black38,
                      fontSize: 18.0),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _burgerCard(
                  "Maple Mustard Tempeh",
                  "Marinted kale, onion, tomato and roasted garlic aioli on grilled spelt bread.",
                  "11.25"),
              _burgerCard(
                  "Gochujang Glazed Cripsy Seitan",
                  "Marinted kale, onion, tomato and roasted garlic aioli on grilled spelt bread.",
                  "12.25"),
              _burgerCard(
                  "Bakad Ziti",
                  "Marinted kale, onion, tomato and roasted garlic aioli on grilled spelt bread.",
                  "11.25"),
            ],
          )
        ],
      ),
    );
  }

  Widget _burgerCard(String title, String description, String price) {
    return Container(
        margin: EdgeInsets.only(bottom: 15.0),
        child: Row(
          children: [
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(8.0)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/carousel/1.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              height: 110.0,
              width: MediaQuery.of(context).size.width - 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: 'TwCen',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 5.0),
                  Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontFamily: 'TwCen', color: Colors.black38),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\$',
                          style: TextStyle(
                              fontFamily: 'TwCen',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26)),
                      Text(
                        price,
                        style: TextStyle(
                            fontFamily: 'TwCen',
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                            color: Colors.black54),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
