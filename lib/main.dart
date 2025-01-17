import 'package:flutter/material.dart';
import 'package:garrage_nepal/pages/home/overview/overview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // 3 tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garrage Nepal'),
        leading: PopupMenuButton(
          icon: const Icon(Icons.more_vert), // Three-dot menu
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 1,
              child: Text('Option 1'),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text('Option 2'),
            ),
          ],
          onSelected: (value) {
            // Handle menu selection
            if (value == 1) {
              print('Option 1 selected');
            } else if (value == 2) {
              print('Option 2 selected');
            }
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications), // Notifications icon
            onPressed: () {
              // Handle notifications action
              print('Notifications clicked');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.account_balance), text: 'Overview'),
            Tab(icon: Icon(Icons.search), text: 'Search'),
            Tab(icon: Icon(Icons.settings), text: 'Settings'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Home Screen')),
          Overview(),
          Center(child: Text('Search Screen')),
          Center(child: Text('Settings Screen')),
        ],
      ),
    );
  }
}
