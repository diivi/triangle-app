import 'package:flutter/material.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  _RewardsPageState createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130,
          width: double.infinity,
          color: Colors.white,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 55.0),
            child: Column(
              children: [
                Text("Rewards", style: TextStyle(fontSize: 30)),
                Text("⭐️ 69 points")
              ],
            ),
          )),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 0.0001,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                child: Column(
                  children: [
                    Container(
                      height: 89,
                      width: 80,
                      decoration: (BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          borderRadius: BorderRadius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "⭐️ 15 points",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}

/*
child: Container(
            padding: EdgeInsets.all(20),
            height: 180,
            width: 180,
            decoration: (BoxDecoration(
                color: Color.fromRGBO(128, 0, 0, 1),
                borderRadius: BorderRadius.circular(5))),

*/