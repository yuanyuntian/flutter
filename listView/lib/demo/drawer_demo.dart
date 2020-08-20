import 'package:flutter/material.dart';


class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child:ListView(
          padding:EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('yuanf',style: TextStyle(fontWeight: FontWeight.bold)), 
              accountEmail: Text('yuanf1990@163.com', style: TextStyle(fontWeight: FontWeight.bold)),
              currentAccountPicture: CircleAvatar(
                backgroundImage:NetworkImage('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3594288030,4119859866&fm=26&gp=0.jpg')
              ),
              decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.itying.com/images/flutter/2.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.5), BlendMode.hardLight)
                      ),
                ),
              ),
            ListTile(
              title:Text('Message', textAlign: TextAlign.right),
              trailing:Icon(Icons.message, color:Colors.black12 ,size: 22),
              onTap: () => Navigator.pop(context)
            ),
            ListTile(
              title:Text('Message', textAlign: TextAlign.right),
              trailing:Icon(Icons.message, color:Colors.black12 ,size: 22),
              onTap: () => Navigator.pop(context)

            ),
            ListTile(
              title:Text('Message', textAlign: TextAlign.right),
              onTap: () => Navigator.pop(context),
              trailing:Icon(Icons.message, color:Colors.black12 ,size: 22)
            ),
          ],
        )
      );
  }
}