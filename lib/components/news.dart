import 'package:flutter/material.dart';

class NewsTab extends StatefulWidget {
  const NewsTab({Key? key}) : super(key: key);

  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
            GestureDetector(
              onTap: () {},
              child: Align(
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 160,
                        child: Image.network(
                          'https://via.placeholder.com/300?text=NEWS',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          'crypto samachar fresh live breaking shreaking vry good i must say',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                ),
              ),
            ),
          ]);
        },
        itemCount: 10,
      ),
    );
  }
}
