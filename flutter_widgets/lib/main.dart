import 'package:flutter/material.dart';

import 'package:flutter_widgets/text_widget.dart';
import 'package:flutter_widgets/appbar_widget.dart';

var widgetNames = [
  'Text',
  'Appbar',
  ];
var widgets = [
  (BuildContext context) => TextWidget(),
  (BuildContext context) => AppbarWidget(),
  ];

void main() => runApp(WidgetApp());

class WidgetApp extends StatelessWidget {
    Widget build(BuildContext context) {
      Map<String,WidgetBuilder> widgetRoutes = Map.fromIterables(widgetNames, widgets);
      for(int i=0; i< widgetNames.length; i++) {
        
      }
      return MaterialApp(
        title: "Flutter Widgets Demo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange
        ),
        home: WidgetHome(),
        routes: widgetRoutes,
      );
    }
  }

  class WidgetHome extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      print('Building $widgetNames');
      return new Scaffold(
        appBar: AppBar(
          title: Text("Widgets Playground"),
        ),
        body: new ListView.builder(
          itemCount: widgetNames.length,
          itemBuilder: (build, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('${widgetNames[index]}');
                },
                child: Card(
                  elevation: 5.0,
                  child: new Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Text(widgetNames[index], style: TextStyle(color: Colors.black, fontSize: 20.0),),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }
