import 'package:flutter/material.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var color = Colors.black;
  var strokeWidth = 3.0;
  final _sign = GlobalKey<SignatureState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          _showCategory(),
          SizedBox(height: 15),
          _showCategory(),
          SizedBox(height: 15),
          _showCategory(),
          SizedBox(height: 15),
          _showCategory(),
          SizedBox(height: 15),
          _showCategory(),
          _showCategory(),
          SizedBox(height: 15),
          _showCategory(),
          SizedBox(height: 15),
          _showCategory(),
          SizedBox(height: 15),
          _showCategory(),
          SizedBox(height: 15),
          _showCategory(),
          _showSignaturePad()
        ],
      )),
    );
  }

  Widget _showCategory() {
    return TextField(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        style: TextStyle(fontSize: 12.0, height: 1.0),
        decoration: InputDecoration(hintText: "TextView"));
  }

  Widget _showSignaturePad() {
    return Container(
      width: double.infinity,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Signature(
          color: color,
          key: _sign,
          strokeWidth: strokeWidth,
        ),
      ),
      color: Colors.grey.shade300,
    );
  }
}
