import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 80.0, 20, 0),
      child: ListView(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Colors.lightBlue,
                      ),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.lightBlue.withOpacity(0.3),
                            offset: Offset(0, 10))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://i.postimg.cc/N0vsVT0c/logo.jpg"))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.lightBlue,
                      ),
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Sibans Sahay",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "🪙 4.29 TNC",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "⭐69 Points",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                Text(
                  "Overview",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Stats",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Achievements and Quests",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.monetization_on,
                  color: Colors.blue,
                ),
                Text(
                  "Inventory",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Colors and Images",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Icons",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Items and NFTs",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
