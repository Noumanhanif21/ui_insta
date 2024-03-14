import 'package:flutter/material.dart';
import 'package:ui_insta/views/feed_view.dart';
import 'package:ui_insta/views/reel_view.dart';
import 'package:ui_insta/views/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Widget> tabs = [
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  final List<Widget> tabBarViews = [
    FeedView(),
    ReelView(),
    TaggedView(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "900",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Following",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/dp.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "21k",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nouman",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  " | ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Developer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/bluetick.png"))),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "No response is a response",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "youtube.com/nouman__hanif",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[500],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text("Edit Profile"),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Contact",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(tabs: tabs),
            SizedBox(
              height: 2000,
              child: TabBarView(children: tabBarViews),
            ),
          ],
        ),
      ),
    );
  }
}
