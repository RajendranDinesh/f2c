import 'package:f2c/navbar.dart';
import 'package:flutter/material.dart';

class Boarding extends StatelessWidget {

  const Boarding({Key? key}) : super(key: key);


  @override
  Widget build(context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 187, 14, 1),
        ),
        child: Column(
          children: [
            Stack(
              children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: width/5, vertical: height/5),
              child: Container(
                width: 225.0,
                height: 225.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/carrot_logo_alone.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
              ),
            ),
            SmallCircle(
              X: width/4.23,
              Y: height/6.28,
              size: 20,
              C: Colors.white,
            ),
            SmallCircle(
              X: width/1.16,
              Y: height/9.45,
              size: 14,
              C: const Color.fromRGBO(252, 180, 220, 1),
            ),
            SmallCircle(
              X: width/1.16,
              Y: height/3.42,
              size: 8.7,
              C: Colors.white,
            ),
            SmallCircle(
              X: width/2.83,
              Y: height/1.95,
              size: 13,
              C: Colors.white,
            ),
            SmallCircle(
              X: width/1.1,
              Y: height/2.19,
              size: 9,
              C: const Color.fromRGBO(252, 180, 220, 1),
            ),
            SmallCircle(
              X: width/1.53,
              Y: height/1.91,
              size: 10,
              C: const Color.fromRGBO(252, 180, 220, 1),
            ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(children: const [
                Text("AG - Mart", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 33, color: Colors.white),),
                Text("Fresh! Secure!!", style: TextStyle(fontFamily: 'Poppins', color: Colors.white),)
              ],),
            ),
            const SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 65,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(255, 187, 14, 1),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(15),
                                    topLeft: Radius.circular(15)),
                              )),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ))),
                  SizedBox(
                      height: 65,
                      width: 170,
                      child: ElevatedButton(
                          onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NavBar())),
                          //onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              )),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallCircle extends StatelessWidget {
  const SmallCircle({
    Key? key,
    required this.X,
    required this.Y,
    required this.size,
    required this.C,
  }) : super(key: key);

  final double X;
  final double Y;
  final double size;
  final Color C;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Y,
      left: X,
      child: InkResponse(
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: C,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
