import 'package:flutter/material.dart';

class NewsTab extends StatefulWidget {
  const NewsTab({ Key? key }) : super(key: key);

  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('News'),
    );
  }
}