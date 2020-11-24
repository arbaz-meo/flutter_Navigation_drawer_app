import 'package:flutter/material.dart';
class newpage extends StatelessWidget {
  final String title;
  newpage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        centerTitle: true,
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}
