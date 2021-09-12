import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.blueGrey,
          ),
          //Containers---
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: screenHeight,
                width: screenWidth / 1.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
              ),
            ],
          ),
          buildIntersectionPhoto(screenWidth, screenHeight),

          buildTextFieldCreat(screenWidth, screenHeight),

          buildTitleIcon(screenWidth, screenHeight),
          buildSloganText(screenHeight, screenWidth),
        ],
      ),
    );
  }

  Positioned buildIntersectionPhoto(double screenWidth, double screenHeight) {
    return Positioned(
          left: screenWidth / 6,
          top: screenHeight / 2.5,
          child: Container(
            width: screenWidth / 3,
            height: screenHeight / 2,
            child: Image.asset("web/assets/photo.png"),
          ),
        );
  }

  Positioned buildTextFieldCreat(double screenWidth, double screenHeight) {
    return Positioned(
          left: screenWidth / 1.9,
          top: screenWidth > 560 ? screenHeight / 4.5 : screenHeight / 3,
          child: SizedBox(
            width: screenWidth / 2.5,
            child: Padding(
              padding: EdgeInsets.only(top: screenWidth > 560 ? 40 : 0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: screenWidth / 50),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: screenWidth / 50),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: screenWidth / 40),
                  SizedBox(
                    width: screenWidth / 2.5,
                    height: screenHeight / 14,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Create Account",
                        style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white,fontSize: 17),
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Colors.blueGrey),
                    ),
                  ),
                  SizedBox(height: screenWidth / 50),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Already have an account ? Login",
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }

  Positioned buildTitleIcon(double screenWidth, double screenHeight) {
    return Positioned(
          left: screenWidth / 1.8,
          top: screenWidth > 560 || screenHeight < 445
              ? screenHeight / 12
              : screenHeight / 5,
          child: SizedBox(
            height: screenHeight / 2.5,
            child: Column(
              children: [
                Text(
                  "Create Account",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: screenHeight / 30,
                ),
                SizedBox(
                  width:
                      screenWidth > 560 ? screenWidth / 3 : screenWidth / 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: screenWidth > 560
                              ? screenWidth / 10
                              : screenWidth / 13,
                          child: Image.asset("web/icons/google.png"),
                        ),
                      ),
                      Text(
                        "- OR -",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: screenWidth > 560
                              ? screenWidth / 10
                              : screenWidth / 13,
                          child: Image.asset("web/icons/facebook.png"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }

  Positioned buildSloganText(double screenHeight, double screenWidth) {
    return Positioned(
          top: screenHeight / 10,
          left: screenWidth / 25,
          child: SizedBox(
            width: screenWidth / 5,
            child: Text(
              "Creat your desing, 3D Objects and dreams",
              style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
        );
  }
}
