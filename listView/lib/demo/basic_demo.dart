import 'package:flutter/material.dart';

class BasicDemo  extends StatelessWidget {

  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '测试';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Container(
           child: Icon(Icons.pool, size:36.0, color: Colors.white),
           padding: EdgeInsets.all(16.0),
           margin: EdgeInsets.all(8.0),
           width: 90.0,
           height: 90.0,
           decoration: BoxDecoration(
             color: Color.fromRGBO(3, 54, 255, 1.0),
             border: Border.all(
                 color: Colors.red,
                 width: 3.0,
                 style: BorderStyle.solid
             ),
             borderRadius: BorderRadius.circular(16.0)
           ),
         )
       ], 
      )
    );
  }
}