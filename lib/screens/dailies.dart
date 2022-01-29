import 'package:flutter/material.dart';

class DailiesPage extends StatefulWidget {
  const DailiesPage({Key? key}) : super(key: key);

  @override
  _DailiesPageState createState() => _DailiesPageState();
}

class _DailiesPageState extends State<DailiesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 260,
          width: double.infinity,
        
          padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Dailies',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(left: 100),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1)),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              child: DropdownButton<String>(
                                value: 'Month',
                                isExpanded: true,
                                items: <String>['Month', 'Year', 'YTD']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(fontSize: 24),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          )))
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    const Text('Date',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_downward, color: Colors.grey[600]),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 0),
                      child: Text('|',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Text('Expense',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_upward, color: Colors.grey[600]),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(top:0),
            itemBuilder: (_, index) => Container(
              margin: const EdgeInsets.only(left: 20, bottom: 20,right:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Date',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text('Expense',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
