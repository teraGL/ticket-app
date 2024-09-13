import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final appScreens = [
    const Text("Home"),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My tickets"),
      ),
      body: const Center(
        child: Text("Ticket Info"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            label: "Home",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            label: "Search",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label: "Tickets",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            label: "Profile",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)
          ),
        ],
      )
    );
  }
}