import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget  {
  ExamplePage();
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<ExamplePage> {

  bool switchTree = true;

  Widget get firstTree => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      RichText(text: TextSpan(text: 'First'),),
      SizedBox(width: 10,),
      RichText(text: TextSpan(text: 'Example'),),
    ],
  );

  Widget get secondTree => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      RichText(text: TextSpan(text: 'Second'),),
      SizedBox(width: 10,),
      //Padding(padding: EdgeInsets.only(right: 10),),
      RichText(text: TextSpan(text: 'Example'),),
    ],
  );

  Widget get switchButton => FlatButton(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(text: "Switch Tree"),
      ),
    ),
    onPressed: () => setState(
      () => switchTree = !switchTree
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(child: switchTree ? firstTree : secondTree),
          switchButton
        ],
      ),
    );
  }
}
