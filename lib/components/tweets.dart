import 'package:flutter/material.dart';

class TweetsTab extends StatefulWidget {
  const TweetsTab({Key? key}) : super(key: key);

  @override
  _TweetsTabState createState() => _TweetsTabState();
}

class _TweetsTabState extends State<TweetsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tweets'),
    );
  }
}
