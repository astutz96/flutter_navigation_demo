import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Next'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContentPage1())
            );
          },
        ),
        //child: Text('Home Page Body'),
      ),
    );
  }
}

class ContentPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Previous'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}






