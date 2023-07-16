import 'package:flutter/material.dart';
import 'agency_dashboard.dart';

class HomeAgency extends StatelessWidget {
  const HomeAgency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agency Home'),
      ),
      body: const DashboardWidget(totalViews:200, totalProperties: 200, totalCalls: 500, totalMessages: 900, houses: [],),
      
      
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
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Terms and Conditions'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help & Support'),
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
