import 'package:flutter/material.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static int _counter = 0;

  final pages = [
    MyPage(
        key: const ValueKey('/'),
        name: '/',
        builder: (context) => const HomeScreen()),
  ];

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    setState(() {
      pages.remove(route.settings);
    });
    return route.didPop(result);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: WillPopScope(
            onWillPop: () async =>
                !await _navigatorKey.currentState!.maybePop(),
            child: Navigator(
              key: _navigatorKey,
              onPopPage: _onPopPage,
              pages: List.of(pages),
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final int id = ++_counter;
              pages.add(MyPage(
                  key: ValueKey('/item/$id'),
                  name: '/item/$id',
                  builder: (context) => ItemScreen(id: id)));
            });
          },
        ),
      ),
    );
  }
}

class MyPage<T> extends Page<T> {
  // ignore: empty_constructor_bodies
  const MyPage(
      {required LocalKey key, required String name, required this.builder})
      : super(key: key, name: name);

  final WidgetBuilder builder;

  @override
  String toString() => '$name';

  @override
  Route<T> createRoute(BuildContext context) {
    // TODO: implement createRoute
    return MaterialPageRoute(builder: builder, settings: this);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
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
