import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 192, 84, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(icon: new Image.asset('assets/Hamburger-menu.png'), onPressed: null),
        ),
        actions: <Widget>[
          IconButton(
            icon: new Image.asset('assets/Search.png'), onPressed: null

          )

        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
            'Headphones',
            style: const TextStyle(
              color: const Color(0xFF202020),
              fontWeight: FontWeight.w500,
              fontFamily: "Montserrat",
              fontSize: 18.0
            ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                Stack(

                  children: <Widget>[
                    Positioned(
                      top: 30.0,
                      right: 0,
                      child: Container(

                        width: 240,
                        height: 85,
                        decoration: new BoxDecoration(
                          color: Color.fromRGBO(32, 32, 32, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0)

                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              offset: Offset(0, 3),
                              blurRadius: 6.0
                            ),

                          ]
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 40.0,
                                right: 15.0,
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  child: Text(
                                    '58',
                                    style: const TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.0
                                    ),

                                  ),
                                )
                            ),

                            Positioned(
                                top: 18.0,
                                right: -5.0,
                                child: Container(
                                  width: 160.0,
                                  height: 40.0,
                                  child: Text(
                                    "\$ 59.",
                                    style: const TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Montserrat",
                                        fontSize: 41.0
                                    ),

                                  ),
                                )
                            )
                          ],
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                      child: Container(
                        width: double.infinity,
                        height: screenAwareSize(260, context),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 18.0,),
                              child: Container(
                                child: Image.asset(
                                  "assets/headphones.png",
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),

                      ),

                    ),
                    Positioned(
                      left: 20.0,
                      bottom: 0.0,
                      child: RawMaterialButton(
                          onPressed: () {},
                          constraints: const BoxConstraints(minWidth: 45, minHeight: 45),
                          child: Icon(
                            Icons.favorite,
                            color: Color.fromRGBO(255, 137, 147, 1)
                          ),
                        elevation: 0.0,
                        shape: CircleBorder(),
                        fillColor: Color.fromRGBO(255, 255, 255, 0.4),
                      ),


                    )

                  ],

                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text(
                    'Boat Rockerz 350 On-Ear Bluetooth',
                    style: const TextStyle(
                        color: const Color(0xFFFEFEFE),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        fontSize: 20.0
                    ),
                  ),
                ),

                SizedBox(
                  height: 5.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text(
                    'Headphones',
                    style: const TextStyle(
                        color: const Color(0xFFFEFEFE),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        fontSize: 20.0
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        height: 30,


                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 192, 84, 1),
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                            color: Color(0xFFFFFFFF),
                            width: 0.5
                          ),

                        ),
                        child: Center(
                          child: new Text(
                              "Details",
                              style: const TextStyle(
                                  color:  const Color(0xeefefefe),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Montserrat",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 10.0
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 40.0),
                  child: new Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Nec nam aliquam sem et tortor consequat id porta nibh. Orci porta non pulvinar neque laoreet suspendisse. Id nibh tortor id aliquet. Dui sapien eget mi proin. Viverra vitae congue eu consequat ac felis donec. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Vulputate mi sit amet mauris commodo quis imperdiet. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Sit amet cursus sit amet dictum sit amet justo. Mattis pellentesque id nibh tortor. Sed blandit libero volutpat sed cras ornare arcu dui. Fermentum et sollicitudin ac orci phasellus. Ipsum nunc aliquet bibendum enim facilisis gravida. Viverra suspendisse potenti nullam ac tortor. Dapibus ultrices in iaculis nunc sed. Nisi porta lorem mollis aliquam ut porttitor leo a. Phasellus egestas tellus rutrum tellus pellentesque. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Commodo ullamcorper a lacus vestibulum sed arcu non odio. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Eros in cursus turpis massa. Eget mauris pharetra et ultrices neque.",
                      style: const TextStyle(
                          color:  const Color(0xfefefefe),
                          fontWeight: FontWeight.w800,
                          fontFamily: "NunitoSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 16.0
                      )
                  )
                )

              ],
            ),
          ),

          Positioned(
            bottom: 10.0,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0, ),
              child: Container(
                width: 380,
                height: 131,

                child: Padding(
                    padding: EdgeInsets.only(top:30, bottom: 30.0, right: 10.0, left: 0.0),
                    child: InkWell(
                      onTap: () {
                        print ('hola');
                      },
                      child: Container(
                        width: 312,
                        height: 85,
                        child: Center(
                          child: new Text(
                              "View Product",
                              style: const TextStyle(
                                  color:  const Color(0xfffefefe),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Montserrat",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 20.0
                              ))
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(236, 60, 3, 1),
                                Color.fromRGBO(234, 60, 3, 1),
                                Color.fromRGBO(216, 78, 16, 1),

                              ],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              offset: Offset(0, 5),
                              blurRadius: 10.0,

                            )
                          ],
                          borderRadius: BorderRadius.circular(9.0)
                        ),
                      ),
                    ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(253, 192, 84, 0.5),
                        Color.fromRGBO(253, 192, 84, 1),
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter
                  )
                ),
              ),
            ),
          )
        ],
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  screenAwareSize(int size, BuildContext context) {
    double baseHeight = 640.0;
    return size * MediaQuery.of(context).size.height / baseHeight;
  }
}
