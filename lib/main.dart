import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner : false,
        home: MyHomePage(),
    );
}}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children:<Widget> [
                Stack(
                  children:<Widget> [
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      color: Colors.pinkAccent,
                    ),
                    Positioned(
                       bottom: 55.0,
                       right: 100.0,
                        left: 0.0,
                        child: Container(
                          height: 350.0,
                          width: 350.0,
                          decoration : BoxDecoration(
                            borderRadius: BorderRadius.circular(320),
                            color: Colors.cyanAccent,
                          ),
                        ),
                    ) ,
                    Positioned(
                     bottom: 100.0,
                     left: 120.0,
                     child: Container(
                       height: 290.0,
                       width:300.0,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(300),
                         color: Colors.yellowAccent
                       ),
                     ),
                    ),
                    Positioned(
                      bottom: 100.0,
                      left: 150.0,
                      child: Container(
                        height: 330.0,
                        width:300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300),
                            color: Colors.lightGreenAccent
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        SizedBox(height: 14.0),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 14.0),
                            Container(
                              alignment: Alignment.topLeft,
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0
                                ),
                                image: DecorationImage(
                                  image: AssetImage('images/9.jpg'),
                                )
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width-120,),
                            Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed:(){},
                                color: Colors.white,
                                iconSize: 28.0,
                              ),
                            ),
                             SizedBox(height: 16.0),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Hi! Welcome',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 55.0),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0,right: 10.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(25),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.amber,
                                  size: 30.0,
                                ),
                                contentPadding:
                                  EdgeInsets.only(left: 15.0,right: 15.0,top:15.0,bottom: 15.0),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Colors.deepPurpleAccent
                                )
                              ),
                            ),
                          )
                        ),
                        SizedBox(height: 10.0,)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.0,),
                Stack(
                  children: <Widget>[
                    SizedBox(height: 10.0,),
                    Material(
                      elevation: 1.0,
                      child: Container(height: 70.0,color: Colors.white,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/4,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/breslet2.jpg')
                                  )
                                ),
                              ),
                              Text(
                                'Brecelet',
                                style: TextStyle(fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/4,
                          child: Column(
                            children: <Widget>[
                              Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/ear2.jpg')
                                )
                            ),
                          ),
                              Text(
                                'Earings',
                                style: TextStyle(fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/4,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/nec1.jpg')
                                    )
                                ),
                              ),
                              Text(
                                'Necklace',
                                style: TextStyle(fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/5,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/ring1.jpg')
                                    )
                                ),
                              ),
                              Text(
                                'Rings',
                                style: TextStyle(fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            specialItemCard('Diamond Vintage Ring', 'images/ring2.png', false)
          ],
        )
      );

  }
}

Widget specialItemCard(String title, String imagePath, bool isLoved){
  return Padding(
    padding: EdgeInsets.only(left: 10.0, right: 10.0,top: 10.0,bottom: 10.0),
    child: Container(
      height: 110.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(width: 10.0,),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Material(
                    elevation: isLoved ? 0.0 : 2.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: isLoved ? Colors.grey.withOpacity(0.2):Colors.white
                      ),
                      child: Center(
                        child: isLoved ? Icon(Icons.favorite_border):Icon(Icons.favorite,color: Colors.red,),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 9.0,),
              Container(
                width: 200.0,
                child: Text(
                  'Twist Round Engagement Ring Special Offer - \$300',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 13.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  SizedBox(width: 4.0,),
                  Container(
                    height: 30.0,
                    width: 115,
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        'Add to cart',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );

}
