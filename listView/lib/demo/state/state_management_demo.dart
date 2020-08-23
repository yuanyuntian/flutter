
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



class StateManagementDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel (
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: CounterWrapperDemo(),
        floatingActionButton: ScopedModelDescendant<CounterModel> (
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.increaseCount
          ),
        ),
      ),
    );
  }
}


class CounterWrapperDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(child: CounterDemo());
  }
}

class CounterDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // final int count = CounterProviderDemo.of(context).count;
    // final VoidCallback increaseCount = CounterProviderDemo.of(context).increaseCount;
    return ScopedModelDescendant <CounterModel>(
      builder: (context, _, model) => ActionChip(
          label: Text('${model.count}'),
          onPressed: model.increaseCount,
        ),
    );
  }
}

class CounterProviderDemo extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProviderDemo({this.count, this.increaseCount, this.child})
      : super(child: child);

  static CounterProviderDemo of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProviderDemo>();
  }

  @override
  bool updateShouldNotify(CounterProviderDemo oldWidget) {
    return true;
  }
}


class CounterModel extends Model {
  int _count = 0;
  int get count => _count;

  void increaseCount () {
    _count += 1;
    notifyListeners();
  }
}