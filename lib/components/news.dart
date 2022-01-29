import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class NewsTab extends StatefulWidget {
  const NewsTab({ Key? key }) : super(key: key);

  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  // Widget build(BuildContext context) {
  //   // return Container(
  //   //   child: Text('News'),
  //   // );
    Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      home:Scaffold(
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          )
          
          )
    );
  }
}
/* 

*/
//https://i.postimg.cc/mrRg4sxH/unknown.png