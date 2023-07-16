import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weather/auth/register.dart';
import 'package:weather/auth/register_agency.dart';
import 'properties/add_properties.dart';
import 'homescreen/home_screen.dart';
import 'error/notfoundpage.dart';
import 'splash/splash.dart';
import 'themedata/constants.dart';
import 'auth/login.dart';
import 'menu/menu.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: AddPropertyPage(),
      routes: {
        '/add_properties': (context) => const AddPropertyPage(),
        '/home': (context) => const HomeScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 150,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Estate App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // TODO: Implement notification functionality
            },
          ),
        ],
      ),
      drawerEnableOpenDragGesture: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        // TODO: Implement search functionality
                      },
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search by location...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.filter_list),
                      onPressed: () {
                        // TODO: Implement filter functionality
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'What are you looking for?',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CategoryWidget(
                  icon: Icons.home,
                  label: 'Homes',
                ),
                CategoryWidget(
                  icon: Icons.apartment,
                  label: 'Apartments',
                ),
                CategoryWidget(
                  icon: Icons.business,
                  label: 'Commercial',
                ),
                CategoryWidget(
                  icon: Icons.favorite,
                  label: 'Favorites',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Featured Properties',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  FeaturedPropertyCard(),
                  FeaturedPropertyCard(),
                  FeaturedPropertyCard(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Latest Properties',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                LatestPropertyCard(
                  image: 'assets/images/property_image.png',
                  title: 'Property Title 1',
                  description: 'Short Description 1',
                  rating: '4.5',
                  price: '\R500,000',
                  location: 'Location 1',
                  bedrooms: 3,
                  bathrooms: 2,
                  landSize: '250 sqft',
                ),
                LatestPropertyCard(
                  image: 'assets/images/property_image.png',
                  title: 'Property Title 2',
                  description: 'Short Description 2',
                  rating: '4.2',
                  price: '\R400,000',
                  location: 'Location 2',
                  bedrooms: 4,
                  bathrooms: 3,
                  landSize: '350 sqft',
                ),
                LatestPropertyCard(
                  image: 'assets/images/property_image.png',
                  title: 'Property Title 3',
                  description: 'Short Description 3',
                  rating: '4.8',
                  price: '\R600,000',
                  location: 'Location 3',
                  bedrooms: 2,
                  bathrooms: 1,
                  landSize: '500 sqft',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryWidget({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          child: Icon(icon),
        ),
        const SizedBox(height: 8.0),
        Text(label),
      ],
    );
  }
}

class FeaturedPropertyCard extends StatelessWidget {
  const FeaturedPropertyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 200.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/property_image.png',
              height: 120.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Property Title'),
                  const Text('Short Description'),
                  Row(
                    children: const [
                      Icon(Icons.star, size: 16.0, color: Colors.amber),
                      Text('4.5'),
                      SizedBox(width: 8.0),
                      Text('\R500,000'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LatestPropertyCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String rating;
  final String price;
  final String location;
  final int bedrooms;
  final int bathrooms;
  final String landSize;

  const LatestPropertyCard({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.rating,
    required this.price,
    required this.location,
    required this.bedrooms,
    required this.bathrooms,
    required this.landSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                image,
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(description),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        const Icon(Icons.star, size: 16.0, color: Colors.amber),
                        Text(rating),
                        const SizedBox(width: 8.0),
                        Text(price),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        const Icon(Icons.location_on, size: 16.0),
                        Text(location),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        const Icon(Icons.king_bed, size: 16.0),
                        Text('$bedrooms Bedrooms'),
                        const SizedBox(width: 8.0),
                        const Icon(Icons.bathtub, size: 16.0),
                        Text('$bathrooms Bathrooms'),
                        const SizedBox(width: 8.0),
                        const Icon(Icons.square_foot, size: 16.0),
                        Text(landSize),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('For Sale'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
