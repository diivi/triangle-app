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
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(
              color: Color(0xFF243447),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            margin: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.black,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              child: const Text('Divyansh',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const Text(
                              '@divy4n5h    5m',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_drop_down_circle_outlined,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                      ),
                      Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: const Text(
                            'This is a tweet by me the tweeter a twitterer on twitter ok? ok! ok.',
                            overflow: TextOverflow.clip,
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              tweetButton(Icons.comment, '54'),
                              tweetButton(Icons.repeat, '462'),
                              tweetButton(Icons.favorite_border, '1.2k'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}

Widget tweetButton(IconData icon, String text) {
  return Container(
    margin: const EdgeInsets.only(right: 15),
    child: Row(
      children: [
        Icon(icon, size: 18, color: Colors.grey[600]),
        Container(
          margin: const EdgeInsets.all(6),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
        )
      ],
    ),
  );
}
