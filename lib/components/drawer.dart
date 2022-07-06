import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  get hoverColor => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.orange,
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  buildSearchField(),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Notification',
                    icon: Icons.notifications_active,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'News',
                    icon: Icons.newspaper_rounded,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'History',
                    icon: Icons.history_rounded,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'Updates',
                    icon: Icons.update_rounded,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Divider(
                    color: Colors.white70,
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Developers',
                    icon: Icons.account_tree_outlined,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'About',
                    icon: Icons.more_vert_rounded,
                  ),
                ],
              ),
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
    const color = Colors.white;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: const TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: () {},
    );
  }
}

Widget buildSearchField() {
  const color = Colors.white;

  return TextField(
    style: const TextStyle(color: color),
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)))),
  );
}
