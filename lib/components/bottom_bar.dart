import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;

  const BottomBar({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BottomNavigationBar(
        currentIndex: index,
        onTap: onTap,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 26, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add_outlined,
                  size: 26, color: Colors.white),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined,
                  size: 26, color: Colors.white),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.person_2_outlined, size: 26, color: Colors.white),
              label: 'Person'),
        ],
      ),
    );
  }
}
