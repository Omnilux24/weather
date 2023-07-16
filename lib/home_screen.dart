import 'package:flutter/material.dart';

class HomeAgency extends StatelessWidget {
  const HomeAgency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agency Home'),
      ),
      body: const Center(
        child: Text(
          'Welcome, Agency!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 32.0,
                        backgroundImage: AssetImage('assets/images/profile_picture.png'),
                      ),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Agency Name',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'User Name',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Add Property'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
