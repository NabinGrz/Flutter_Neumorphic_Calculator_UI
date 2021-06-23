import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final text = MediaQuery.of(context).platformBrightness == Brightness.dark
    //     ? 'DarkTheme'
    //     : 'LightTheme';
    return MaterialApp(
      home: CalcUI(),
    );
  }
}

class CalcUI extends StatefulWidget {
  @override
  CalcUIState createState() => CalcUIState();
}

bool isDark = false;

class CalcUIState extends State<CalcUI> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _text = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Color(0xFFE7FDFE),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 25.0),
                  child: Container(
                    // color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.056,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isDark = !isDark;
                              });
                            },
                            icon: Icon(
                              Icons.light_mode_outlined,
                              color: Colors.black,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.dark_mode_outlined,
                              color: Colors.black,
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: isDark ? Color(0xFF000000) : Color(0xFFE7FDFE),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF97999B), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 12, // blur radius
                          offset: Offset(6, 6), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        BoxShadow(
                          color: Colors.white, //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 9, // blur radius
                          offset: Offset(-2, -4), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 10.0),
                    child: Neumorphic(
                        style: NeumorphicStyle(
                          lightSource: LightSource.topLeft,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(60)),
                          depth: -9,
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Color(0xFF353636),
                          color: Color(0xFFE7FDFE),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 20.0),
                              child: TextFormField(
                                controller: _text,
                                style: TextStyle(fontSize: 50),
                                textDirection: TextDirection.rtl,
                                keyboardType: TextInputType
                                    .number, //specifies input type in textfield
                                textInputAction: TextInputAction
                                    .done, //provied actions to be done after input is given
                                decoration: InputDecoration(
                                  hintText: "0",
                                  hintTextDirection: TextDirection.rtl,

                                  hintStyle: TextStyle(fontSize: 50),
                                  border: InputBorder
                                      .none, //to add icon inside textfield
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Color(0xFFE7FDFE),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Center(
                            child: Text(
                          "sin",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400),
                        )),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF97999B), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 12, // blur radius
                              offset:
                                  Offset(6, 6), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                            BoxShadow(
                              color: Color(0xFFFFFFFF), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 9, // blur radius
                              offset:
                                  Offset(-2, -4), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Center(
                            child: Text(
                          "cos",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400),
                        )),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF97999B), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 12, // blur radius
                              offset:
                                  Offset(6, 6), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                            BoxShadow(
                              color: Color(0xFFFFFFFF), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 9, // blur radius
                              offset:
                                  Offset(-2, -4), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Center(
                            child: Text(
                          "tan",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400),
                        )),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF97999B), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 12, // blur radius
                              offset:
                                  Offset(6, 6), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                            BoxShadow(
                              color: Color(0xFFFFFFFF), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 9, // blur radius
                              offset:
                                  Offset(-2, -4), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Center(
                            child: Text(
                          "%",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400),
                        )),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF97999B), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 12, // blur radius
                              offset:
                                  Offset(6, 6), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                            BoxShadow(
                              color: Color(0xFFFFFFFF), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 9, // blur radius
                              offset:
                                  Offset(-2, -4), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xFFE7FDFE),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.width * 0.17,
                          child: Center(
                              child: Text(
                            "C",
                            style: TextStyle(
                                fontSize: 35,
                                color: Color(0xFFFF3E25),
                                fontWeight: FontWeight.w500),
                          )),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE7FDFE),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF828283), //color of shadow
                                spreadRadius: 1, //spread radius
                                blurRadius: 15, // blur radius
                                offset:
                                    Offset(6, 6), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              BoxShadow(
                                color: Color(0xFFFFFFFF), //color of shadow
                                spreadRadius: 1, //spread radius
                                blurRadius: 15, // blur radius
                                offset: Offset(
                                    -4, -4), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += ")";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "(",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w900),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(6,
                                      6), // changes po0xFF828283sition of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "(";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              ")",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w900),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text = "";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Icon(
                              Icons.cut,
                              color: Colors.red,
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "7";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "7",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "8";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "9";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "9",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "x";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "x",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w900),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "4";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "5";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "6";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "6",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "-";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w900),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "1";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "2";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "3";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "+";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w900),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "0";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += ".";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              ".",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w900),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            _text.text += "/";
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.092,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "/",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w900),
                            )),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE7FDFE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF828283), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      6, 6), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                BoxShadow(
                                  color: Color(0xFFFFFFFF), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(
                                      -4, -4), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.092,
                          width: MediaQuery.of(context).size.width * 0.19,
                          child: Center(
                              child: Text(
                            "=",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.red,
                                fontWeight: FontWeight.w900),
                          )),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE7FDFE),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF97999B), //color of shadow
                                spreadRadius: 1, //spread radius
                                blurRadius: 15, // blur radius
                                offset:
                                    Offset(6, 6), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              BoxShadow(
                                color: Color(0xFFFFFFFF), //color of shadow
                                spreadRadius: 1, //spread radius
                                blurRadius: 15, // blur radius
                                offset: Offset(
                                    -4, -4), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
