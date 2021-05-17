import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(), //making MainPage class
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Card Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack( //using stack for the body
        children: <Widget>[
          Container(
            decoration: BoxDecoration( //using box decoration to change the background behind
                gradient: LinearGradient( //using linear gradient to make the background from 2 color
              colors: [Color(0xFFFE5788), Color(0xFFF56D5D)], //we give the first color and the second color
              begin: Alignment.topCenter, //begin the projcet color at topcenter
              end: Alignment.bottomCenter, //end the project color at bottomcenter
            )),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8, //using mediaquery to make it compatible with every users phone
              height: MediaQuery.of(context).size.height * 0.7, //using mediaquery to make it compatible with every users phone
              child: Card(
                elevation: 10, //giving elevation 10
                child: Stack( 
                  children: <Widget>[
                    Opacity(
                        opacity: 0.5, // giving an opacity for the widget
                        child: Container(
                          decoration: BoxDecoration( //using box decoration
                              borderRadius: BorderRadius.circular(5), //giving it border radius circular to make it look like a stadium look a like
                              image: DecorationImage(
                                  image: NetworkImage( //using network image to take image from the internet
                                      "https://66.media.tumblr.com/96ea867276bde3315ba3ef047fbb835b/tumblr_pkq85tSiwt1wpzr7u_540.jpg"),
                                  fit: BoxFit.cover)),
                        )),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35, ////using mediaquery to make it compatible with every users phone
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only( //using an only radius
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                          image: DecorationImage(
                              image: NetworkImage( //using network image to take image from the internet
                                  "https://66.media.tumblr.com/96ea867276bde3315ba3ef047fbb835b/tumblr_pkq85tSiwt1wpzr7u_540.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB( //making it having an edgeinsets left,top,right,bottom
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35, //using mediaquery to make it compatible with every users phone
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Aestethic Black And White", //giving the head text
                              maxLines: 2, //max lines 2
                              textAlign: TextAlign.center, //text align we put the text in the center
                              style: TextStyle(
                                color: Colors.black, //gicing the color black
                                fontSize: 30, 
                                fontWeight: FontWeight.w800,
                                shadows: [
                                  Shadow( //giving shadow to make it even more attractive
                                    blurRadius: 10.0, //shadow blur radius
                                    color: Colors.white, //shadow color
                                    offset: Offset(2.0, 2.0), //shadow offset
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 25, 0, 15), //making it having an edgeinsets left,top,right,bottom
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center, //making it keeping at the center
                                children: <Widget>[
                                  Text(
                                    "Posted On ", //text for the subheading
                                    style: TextStyle( //style for the subheading
                                      color: Colors.white, //the color text
                                      fontSize: 15, //text size
                                      fontWeight: FontWeight.w600, //text bold
                                    ),
                                  ),
                                  Text(
                                    "November 27, 2020", //text for subheading
                                    style: TextStyle( //style for subheading
                                      color: Colors.black, //color of the text
                                      fontSize: 18, //size of the text
                                      fontWeight: FontWeight.w800,//bold of the text
                                      shadows: [ //giving shadows to make it more attractive
                                        Shadow(
                                          blurRadius: 10.0, //shadow blur radius
                                          color: Colors.white, //shadow color
                                          offset: Offset(2.0, 2.0), //shadow offset
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer( //this if for the left part to make it in the center
                                  flex: 10,
                                ),
                                // Icon
                                Icon( //left icon
                                  Icons.thumb_up,
                                  size: 18,
                                  color: Colors.red[400],
                                ),

                                Spacer(
                                  flex: 1,
                                ),
                                // Text
                                Text( //text for the left icon
                                  "999", 
                                  style: TextStyle(color: Colors.white),
                                ),

                                Spacer(
                                  flex: 5,
                                ),
                                // Icon
                                Icon( //right icon
                                  Icons.comment,
                                  size: 18,
                                  color: Colors.red[300],
                                ),

                                Spacer(
                                  flex: 1,
                                ),
                                // Text
                                Text( //text for right icon
                                  "134",
                                  style: TextStyle(color: Colors.white),
                                ),

                                Spacer( //this if for the right part to make it in the center
                                  flex: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
