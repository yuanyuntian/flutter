import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
  }
}


class GridViewExtendDemo extends StatelessWidget {

  List<Widget> _buildTitles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.red),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      crossAxisSpacing: 16,
      mainAxisSpacing: 8.0,
      maxCrossAxisExtent: 160,
      scrollDirection: Axis.vertical,
      children: _buildTitles(200)
    );
  }
}

class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit:BoxFit.cover
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
      ),
    );
  }
}



class GridViewCountDemo extends StatelessWidget {

  List<Widget> _buildTitles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.red),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 8.0,
      children: _buildTitles(200)
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              Text(posts[index].author,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey))
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: PageController(initialPage: 1, keepPage: true),
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
      children: [
        Container(
          color: Colors.brown[100],
          alignment: Alignment.center,
          child: Text('ONE',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        Container(
          color: Colors.green[100],
          alignment: Alignment.center,
          child: Text('TWO',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        Container(
          color: Colors.yellow[100],
          alignment: Alignment.center,
          child: Text('THREE',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        )
      ],
    );
  }
}
