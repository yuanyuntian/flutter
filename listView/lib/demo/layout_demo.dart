import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth:100,
              minHeight:100
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
          // AspectRatio(
          //   aspectRatio:16.0/9.0,
          //   child: Container(
          //     color:Color.fromRGBO(3, 54, 255, 1.0)
          //   ),
          // )          
          // SizedBox(
          //   width:200.0,
          //   height:300.0,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color:Color.fromRGBO(3, 54, 255, 1.0),
          //       borderRadius: BorderRadius.circular(8.0)
          //     ),
          //     child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)
          //   ),
          // ),
          // SizedBox(
          //   height:16.0
          // ),
          // SizedBox(
          //   width:100.0,
          //   height:100.0,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color:Color.fromRGBO(3, 54, 255, 1.0),
          //       borderRadius: BorderRadius.circular(8.0)
          //     ),
          //     child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0)
          //   ),
          // ),
          // IconBadge(Icons.pool),
          // IconBadge(Icons.airplay,size: 64),
          // IconBadge(Icons.mouse)
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
