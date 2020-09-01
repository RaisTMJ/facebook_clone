import 'package:facebook_clone/custom_theme.dart';
import 'package:facebook_clone/theme.dart';
import 'package:flutter/material.dart';

import 'User.dart';
import 'data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _controller;
  CustomeThemedState _themedState;

  var _scaffold = GlobalKey<ScaffoldState>();
  var _bottomIndex = 0;
  var _theme = 0;

  static final user = IraisUsers;
  static final friend = Idarwiis;

  final List<Feed> _feed = feeds;

  void _changeTheme(BuildContext buildContext, ThemeKeys key) {
    if (_themedState == null) {
      _themedState = CustomedTheme.instanceOf(buildContext);
      _themedState.changeTheme(key);
    } else {
      _themedState.changeTheme(key);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    Future.delayed(Duration(seconds: 1), () {
      print('Delayeed');
      _changeTheme(context, ThemeKeys.LIGHT);
    });
  }

  Future<void> _refresh() {
    return Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        print('100');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
      key: _scaffold,
      appBar: _appBar(size),
    );
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  _appBar(Size size) {
    return PreferredSize(
        preferredSize: Size(size.width, 50),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                GestureDetector(
                  onTap: () => _scaffold.currentState.isDrawerOpen
                      ? _scaffold.currentState.openEndDrawer()
                      : _scaffold.currentState.openDrawer(),
                  child: Container(
                    width: 150,
                    height: 70,
                    child:  Container(
                        width: 100,
                        height: 50,
                        child: ClipRect(child: Image.asset('images/facebook-logo-blue-fb.png', fit: BoxFit.cover),),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }

// @override
// Widget build(BuildContext context) {
//   // This method is rerun every time setState is called, for instance as done
//   // by the _incrementCounter method above.
//   //
//   // The Flutter framework has been optimized to make rerunning build methods
//   // fast, so that you can just rebuild anything that needs updating rather
//   // than having to individually change instances of widgets.
//   return Scaffold(
//     appBar: AppBar(
//       // Here we take the value from the MyHomePage object that was created by
//       // the App.build method, and use it to set our appbar title.
//       title: Text(widget.title),
//     ),
//     body: Center(
//       // Center is a layout widget. It takes a single child and positions it
//       // in the middle of the parent.
//       child: Column(
//         // Column is also a layout widget. It takes a list of children and
//         // arranges them vertically. By default, it sizes itself to fit its
//         // children horizontally, and tries to be as tall as its parent.
//         //
//         // Invoke "debug painting" (press "p" in the console, choose the
//         // "Toggle Debug Paint" action from the Flutter Inspector in Android
//         // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//         // to see the wireframe for each widget.
//         //
//         // Column has various properties to control how it sizes itself and
//         // how it positions its children. Here we use mainAxisAlignment to
//         // center the children vertically; the main axis here is the vertical
//         // axis because Columns are vertical (the cross axis would be
//         // horizontal).
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             'You have pushed the button this many times:',
//           ),
//           Text(
//             '$_counter',
//             style: Theme
//                 .of(context)
//                 .textTheme
//                 .headline4,
//           ),
//         ],
//       ),
//     ),
//     floatingActionButton: FloatingActionButton(
//       onPressed: _incrementCounter,
//       tooltip: 'Increment',
//       child: Icon(Icons.add),
//     ), // This trailing comma makes auto-formatting nicer for build methods.
//   );
// }
}
