import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.settings_outlined, color: Colors.white),
            ),
          ],
        ),
        body: Column(
          children: [
            // profile photo
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  child: Image.asset(
                      'images/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.webp')),
            ),
            const SizedBox(height: 5),
            // username
            const Text('John F Kenn',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            const SizedBox(height: 5),
            const Text('New York USA',
                style: TextStyle(
                    color: Color.fromARGB(255, 219, 219, 219), fontSize: 15)),
            const SizedBox(height: 20),
            // followers
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: const [
                        Text(
                          '10.6K',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              color: Color.fromARGB(255, 219, 219, 219),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: const [
                        Text(
                          '2.2K',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              color: Color.fromARGB(255, 219, 219, 219),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            // collection
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: const [
                        Text(
                          '16',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Collections',
                          style: TextStyle(
                              color: Color.fromARGB(255, 219, 219, 219),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // card nft
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 180,
                  padding: new EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        ListTile(),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 180,
                  padding: new EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        ListTile(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(26, 27, 38, 1),
              borderRadius: BorderRadius.circular(35)),
        
          ),
        ),
    );
  }
}
