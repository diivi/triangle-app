import 'package:flutter/material.dart';
import 'package:triangle/components/tweets.dart';
import 'package:triangle/components/news.dart';
import 'package:triangle/components/tickers.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF1F1F1F),
                Color(0xFF545454),
              ],
            ),
          ),
        ),
        Expanded(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(1.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      TabBar(
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(
                            child: Text(
                              'Tickers',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Tab(
                              child: Text(
                            'News',
                            style: TextStyle(color: Colors.black),
                          )),
                          Tab(
                              child: Text(
                            'Tweets',
                            style: TextStyle(color: Colors.black),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              body: const TabBarView(
                children: <Widget>[
                  TickerTab(),
                  NewsTab(),
                  TweetsTab(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
