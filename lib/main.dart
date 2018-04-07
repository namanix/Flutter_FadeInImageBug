import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //First picture exists. Second is 404
  List<String> sampleData = ["https://images.pexels.com/photos/17679/pexels-photo.jpg?auto=compress", "https://images.pexels.com/photos/17679/error.jpg"];

  void removeFirst() {
    sampleData.removeAt(0);
    print("Did it!");
    this.setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new ListView.builder(
                itemCount: sampleData == null ? 0 : sampleData.length,
                itemBuilder: (BuildContext context, int index) {
                  return new ListTile(
                    title: new Text(sampleData[index]),
                    leading: new FadeInImage.assetNetwork(placeholder: 'assets/FallBackUsersImage.jpg', image: sampleData[index]),
                  );
                }
            ),
            height: 200.0,
          ),
          new InkWell(
            child: new Padding(
              padding: new EdgeInsets.all(20.0),
              child: new Text('Press here'),
            ),
            onTap: removeFirst,
          ),
        ],
      ),
    );
  }
}
