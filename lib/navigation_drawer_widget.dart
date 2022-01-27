import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Sarah Abs';
    final email = 'sarah@abs.com';
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color: Color.fromRGBO(32, 50, 52, 1),
        child: ListView(
          padding: padding,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("test"),
              accountEmail: Text("test@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                      "https://i.postimg.cc/mrRg4sxH/unknown.png",
                      width: 90,
                      height: 80,
                      fit: BoxFit.cover),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.postimg.cc/449JMdq3/Stealth-1920x1080.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: "My Account",
              icon: Icons.person,
            ),
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: "Settings",
              icon: Icons.settings,
            ),
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: "About",
              icon: Icons.info,
            ),
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: "Onboarding",
              icon: Icons.first_page,
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            const SizedBox(
              height: 44,
            ),
            buildMenuItem(
              text: "Logout",
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: () {},
    );
  }
}
