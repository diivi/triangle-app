import 'package:flutter/material.dart';

class NewEntry extends StatefulWidget {
  const NewEntry({Key? key}) : super(key: key);

  @override
  _NewEntryState createState() => _NewEntryState();
}

class _NewEntryState extends State<NewEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'New Transactions',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
