import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight:120.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'flutter well',
                style:TextStyle(
                  fontSize:15.0,
                  letterSpacing:3.0,
                  fontWeight:FontWeight.w400
                )
              ),
              background: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597839788768&di=6fb8cc6904670c5cf193349f05241086&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F4%2F57d7abcf2070b.jpg',
                fit:BoxFit.cover
              ),
            ),
          ),
          SliverSafeArea(
              sliver: SliverPadding(
                  padding: EdgeInsets.all(8.0), sliver: SliverGridDemo()))
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
                borderRadius: BorderRadius.circular(18.0),
                clipBehavior: Clip.hardEdge,
                elevation: 14.0,
                shadowColor: Colors.grey.shade500,
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        posts[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 30.0,
                      left: 30.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            posts[index].title,
                            style: TextStyle(
                              fontSize:20.0,
                              color:Colors.white
                            ),
                          ),
                           Text(
                            posts[index].author,
                            style: TextStyle(
                              fontSize:13.0,
                              color:Colors.white
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )));
      }, childCount: posts.length),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0,
          mainAxisSpacing: 8.0),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}
