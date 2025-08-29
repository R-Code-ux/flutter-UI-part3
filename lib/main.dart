import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/gta.jpg', height: 200, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.edit),
                  label: const Text("Edit"),
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  icon: const Icon(Icons.delete),
                  label: const Text("Delete"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              tooltip: "Settings",
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              tooltip: "Home",
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              tooltip: "Profile",
              icon: const Icon(Icons.person, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: ClipOval(
          child: Image.network(
            "https://happywishy.co.ke/product/gta-san-andreas/?srsltid=AfmBOop9ewEHZmg3l874GcHZAdAVbt8qk7teaOEsQZAi2PXjnlzponiY",
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
