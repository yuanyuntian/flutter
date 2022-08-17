import 'package:flutter/material.dart';

final _navigator = GlobalKey<NavigatorState>();

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  static const int _counter = 15;

  final pages = [
    MyPage(
      key: const ValueKey('/'),
      name: '/',
      builder: (context) => HomeScreen()
    ),
    MyPage(
      key: const ValueKey('/category/5'),
      name: '/category/5',
      builder: (context) => const CategoryScreen(id: 5),
    ),
    MyPage(
      key: const ValueKey('/item/15'),
      name: '/item/15',
      builder: (context) => const ItemScreen(id: 15),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyPage<T> extends Page<T> {
  const MyPage(
      {required LocalKey key, required String name,required this.builder}):super(key: key,name: name);
  final WidgetBuilder builder;

  @override
  String toString() => '$name';

  @override
  Route<T> createRoute(BuildContext context) {
    // TODO: implement createRoute
    return MaterialPageRoute(settings: this, builder: builder);
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: Center(
        child: Text(
          'Home',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Center(
        child: Text(
          'Category $id',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Item $id\n${ModalRoute.of(context)?.settings}',
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
