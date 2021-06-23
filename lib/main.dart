import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabincalculator/calc.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Color(0xFFE7FDFE),
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Color(0xFFE7FDFE),
          systemNavigationBarIconBrightness: Brightness.light),
    );

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
    );
  }
}

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  _SplashScreenUIState createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE7FDFE),
        body: Center(
          child: InkWell(
            hoverColor: Colors.yellow,
            focusColor: Colors.blue,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CalcUI()));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.16,
              width: MediaQuery.of(context).size.width * 0.32,
              child: Center(child: Image.asset("assets/images/calculator.png")),
              decoration: BoxDecoration(
                  color: Color(0xFFE7FDFE),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF97999B), //color of shadow
                      spreadRadius: 1, //spread radius
                      blurRadius: 15, // blur radius
                      offset: Offset(10, 10), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    BoxShadow(
                      color: Color(0xFFFFFFFF), //color of shadow
                      spreadRadius: 1, //spread radius
                      blurRadius: 15, // blur radius
                      offset: Offset(-9, -9), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
