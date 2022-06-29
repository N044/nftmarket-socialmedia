import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: false,
          backgroundColor: Colors.black,
          title: RichText(
            text: TextSpan(
              text: 'Notification',
              style: GoogleFonts.chakraPetch(
                textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: ListView(children: <Widget>[
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/avatar1.png'),
                radius: 30,
              ),
              title: RichText(
                text: TextSpan(
                  text: 'Eleanor Pena',
                  style: GoogleFonts.chakraPetch(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold)),
                  children: const [
                    TextSpan(
                      text: ' followed you',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              subtitle: Text(
                '9 Jul 2021, 11.34',
                style: GoogleFonts.chakraPetch(
                    textStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                )),
              ),
              trailing: SizedBox(
                width: 77,
                height: 26,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Text('Follow',
                      style: GoogleFonts.chakraPetch(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(3, 3),
                                blurRadius: 5)
                          ]))),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/avatar2.png'),
                  radius: 30,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'New bid',
                        style: GoogleFonts.chakraPetch(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey)),
                        children: const [
                          TextSpan(
                            text: ' Mind',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    RichText(
                      text: TextSpan(
                        text: '0.0002 ETH',
                        style: GoogleFonts.chakraPetch(
                            textStyle: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
                subtitle: Text(
                  '9 Jul 2021, 11.34',
                  style: GoogleFonts.chakraPetch(
                      textStyle: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/nft1.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                )),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/icon.png'),
                radius: 30,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'ETH received',
                      style: GoogleFonts.chakraPetch(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      text: '0.0002 ETH',
                      style: GoogleFonts.chakraPetch(
                          textStyle: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      children: const [
                        TextSpan(
                          text: ' received',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                ],
              ),
              subtitle: Text(
                '9 Jul 2021, 11.34',
                style: GoogleFonts.chakraPetch(
                    textStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                )),
              ),
              trailing: SizedBox(
                width: 98,
                height: 26,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Text('My balance',
                      style: GoogleFonts.chakraPetch(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(3, 3),
                                blurRadius: 5)
                          ]))),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/avatar3.png'),
                  radius: 30,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'New bid',
                        style: GoogleFonts.chakraPetch(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey)),
                        children: const [
                          TextSpan(
                            text: ' Mind',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    RichText(
                      text: TextSpan(
                        text: '0.0002 ETH',
                        style: GoogleFonts.chakraPetch(
                            textStyle: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
                subtitle: Text(
                  '9 Jul 2021, 11.34',
                  style: GoogleFonts.chakraPetch(
                      textStyle: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/nft2.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                )),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/icon.png'),
                radius: 30,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'ETH received',
                      style: GoogleFonts.chakraPetch(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      text: '0.0002 ETH',
                      style: GoogleFonts.chakraPetch(
                          textStyle: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      children: const [
                        TextSpan(
                          text: ' received',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                ],
              ),
              subtitle: Text(
                '9 Jul 2021, 11.34',
                style: GoogleFonts.chakraPetch(
                    textStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                )),
              ),
              trailing: SizedBox(
                width: 98,
                height: 26,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Text('My balance',
                      style: GoogleFonts.chakraPetch(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(3, 3),
                                blurRadius: 5)
                          ]))),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/avatar4.png'),
                  radius: 30,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'New bid',
                        style: GoogleFonts.chakraPetch(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey)),
                        children: const [
                          TextSpan(
                            text: ' Mind',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    RichText(
                      text: TextSpan(
                        text: '0.0002 ETH',
                        style: GoogleFonts.chakraPetch(
                            textStyle: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
                subtitle: Text(
                  '9 Jul 2021, 11.34',
                  style: GoogleFonts.chakraPetch(
                      textStyle: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/nft3.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                )),
            const SizedBox(
              height: 25,
            ),
            ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/avatar5.png'),
                  radius: 30,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'New bid',
                        style: GoogleFonts.chakraPetch(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey)),
                        children: const [
                          TextSpan(
                            text: ' Mind',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    RichText(
                      text: TextSpan(
                        text: '0.0002 ETH',
                        style: GoogleFonts.chakraPetch(
                            textStyle: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
                subtitle: Text(
                  '9 Jul 2021, 11.34',
                  style: GoogleFonts.chakraPetch(
                      textStyle: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/nft4.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                )),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/icon.png'),
                radius: 30,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'ETH received',
                      style: GoogleFonts.chakraPetch(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      text: '0.0002 ETH',
                      style: GoogleFonts.chakraPetch(
                          textStyle: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      children: const [
                        TextSpan(
                          text: ' received',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                ],
              ),
              subtitle: Text(
                '9 Jul 2021, 11.34',
                style: GoogleFonts.chakraPetch(
                    textStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                )),
              ),
              trailing: SizedBox(
                width: 98,
                height: 26,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Text('My balance',
                      style: GoogleFonts.chakraPetch(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(3, 3),
                                blurRadius: 5)
                          ]))),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/icon.png'),
                radius: 30,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'ETH received',
                      style: GoogleFonts.chakraPetch(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      text: '0.0002 ETH',
                      style: GoogleFonts.chakraPetch(
                          textStyle: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      children: const [
                        TextSpan(
                          text: ' received',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                ],
              ),
              subtitle: Text(
                '9 Jul 2021, 11.34',
                style: GoogleFonts.chakraPetch(
                    textStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                )),
              ),
              trailing: SizedBox(
                width: 98,
                height: 26,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Text('My balance',
                      style: GoogleFonts.chakraPetch(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(3, 3),
                                blurRadius: 5)
                          ]))),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ]),
        ));
  }
}
