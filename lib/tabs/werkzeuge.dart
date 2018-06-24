import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Werkzeuge extends StatelessWidget {
  static var routes = <String, WidgetBuilder> {
    '/werkzeug1': (BuildContext context) => new Werkzeug1(),
  };

  static Route<BuildContext> _getRoute(RouteSettings settings) {
    var builder = routes[settings.name];
    if(builder != null) {
      return new MaterialPageRoute(
        settings: settings,
        builder: builder,
      );
    }
    return null;
  }

  Widget build(BuildContext context) {
    var app =new MaterialApp(
      home: new HomeTabs(),
      onGenerateRoute: _getRoute,
    );

    return app;
  }
}

class HomeTabs extends StatefulWidget {
  HomeTabs()
      :super();

  @override
  _HomeTabsState createState() => new _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> with SingleTickerProviderStateMixin {
  TabController controller;
  _HomeTabsState() {
    //controller=new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    if(controller == null) {
      controller=new TabController(length: 2, vsync: this);
    }

    return new Scaffold(
        bottomNavigationBar: new Material (
          color: Colors.blue,
        ),
        body: new TabBarView(
          children: <Widget> [
            new Screen1(),
          ],
          controller: controller,
        )
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold( // 1
        body: new Center(
          child: new RaisedButton(
            onPressed:(){
              Navigator.of(context).pushNamed("/werkzeug1");
            },
            child: new Text("WERKZEUG 1"),
          ),
        )
    );
  }
}

class Werkzeug1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold( // 1
        body: new Center(
          child: new RaisedButton(
            onPressed:(){
              Navigator.of(context).pop();
            },
            child: new Text("Zurück"),
          ),
        )
    );
  }
}


