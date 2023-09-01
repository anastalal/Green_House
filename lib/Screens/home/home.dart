import 'package:green_house/Components/action_button.dart';
import 'package:green_house/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:green_house/services/checkInternetConnection.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 20,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFFE2FFD1)),
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text(
                          'Green House',
                          style: TextStyle(
                            color: Color(0xFF096637),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    right: 0,
                    child: Container(
                      // width: MediaQuery.of(context).size.width,
                      child: Container(
                        child: const IconButton(
                          onPressed: null,
                          icon: Icon(Icons.refresh_rounded),
                          iconSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -4,
                    top: 470,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 432,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('lib/img/kisspng.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      '17.6',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 30,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Humidity',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  "lib/img/Percent.png",
                                  alignment: Alignment.topRight,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      '17.6',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 30,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Humidity',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  "lib/img/Percent.png",
                                  alignment: Alignment.topRight,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      '17.6',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 30,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Humidity',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  "lib/img/Percent.png",
                                  alignment: Alignment.topRight,
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(
                    left: 182,
                    top: 582.06,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-1.57),
                      child: Container(
                        width: 78.06,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFB8A486),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 199,
                    top: 515,
                    child: SizedBox(
                      width: 189,
                      height: 53,
                      child: Text(
                        'Please fill the water tank!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          //fontFamily: 'Nunito',
                          //   fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 27,
                    top: 615,
                    child: Container(
                      width: 355.98,
                      height: 85.87,
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Column(
                                  children: const [
                                    Text(
                                      '17.6',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 30,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Humidity',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Column(
                                  children: const [
                                    Text(
                                      '17.6',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 30,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Humidity',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: Column(
                                  children: const [
                                    // ignore: duplicate_ignore
                                    Text(
                                      '17.6',
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Humidity',
                                      style: TextStyle(
                                        color: Color(0xFF325A3E),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
