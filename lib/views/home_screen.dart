import 'package:ev_station_booking/widgets/home_page_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  final List<PreferredSizeWidget> _appBodies = [
    const PreferredSize(
      preferredSize: Size.fromHeight(56.0),
      child: HomePageWidget(),
    ),
    const PreferredSize(
      preferredSize: Size.fromHeight(56.0),
      child: Center(
        child: Text(
          "Add Product",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    const PreferredSize(
      preferredSize: Size.fromHeight(56.0),
      child: Center(
        child: Text(
          "View Store",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    const PreferredSize(
      preferredSize: Size.fromHeight(56.0),
      child: Center(
        child: Text(
          "Repair Requests",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("EV Station Owner"),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.green,
          backgroundColor: Colors.black,
          iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return const IconThemeData(
                  color: Colors.black,
                ); // Icon color for selected item
              }
              return const IconThemeData(
                color: Colors.white,
              ); // Icon color for unselected items
            },
          ),
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  color: Colors.green, // Text color for selected item
                  fontWeight: FontWeight.bold,
                );
              }
              return const TextStyle(
                color: Colors.grey, // Text color for unselected items
                fontWeight: FontWeight.normal,
              );
            },
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          // labelBehavior: ,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.add),
              label: "Add Product",
            ),
            NavigationDestination(
              icon: Icon(Icons.store),
              label: "View Store",
            ),
            NavigationDestination(
              icon: Icon(Icons.build),
              label: "Repair Requests",
            ),
          ],
        ),
      ),
      body: _appBodies[currentPageIndex],
    );
  }
}
