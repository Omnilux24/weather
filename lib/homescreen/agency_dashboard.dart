import 'package:flutter/material.dart';

import 'house_widge.dart';

class DashboardWidget extends StatelessWidget {
  final int totalProperties;
  final int totalViews;
  final int totalMessages;
  final int totalCalls;
  final List<House> houses;

  const DashboardWidget({
    Key? key,
    required this.totalProperties,
    required this.totalViews,
    required this.totalMessages,
    required this.totalCalls,
    required this.houses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: _buildStatItem(
                        icon: Icons.home,
                        label: 'Total Properties',
                        value: totalProperties.toString(),
                        color: const LinearGradient(
                          colors: [Colors.purple, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: _buildStatItem(
                        icon: Icons.remove_red_eye,
                        label: 'Total Views',
                        value: totalViews.toString(),
                        color: const LinearGradient(
                          colors: [Colors.orange, Colors.deepOrange],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: _buildStatItem(
                        icon: Icons.message,
                        label: 'Total Messages',
                        value: totalMessages.toString(),
                        color: const LinearGradient(
                          colors: [Colors.green, Colors.teal],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: _buildStatItem(
                        icon: Icons.phone,
                        label: 'Total Calls',
                        value: totalCalls.toString(),
                        color: const LinearGradient(
                          colors: [Colors.blue, Colors.indigo],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        HouseListWidget(houses: houses), // Replace with your list of houses
      ],
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required String label,
    required String value,
    required Gradient color,
  }) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: color,
      ),
      child: Column(
        children: [
          Icon(icon, size: 36.0, color: Colors.white),
          const SizedBox(height: 8.0),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4.0),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class HouseListWidget extends StatelessWidget {
  final List<House> houses;

  const HouseListWidget({Key? key, required this.houses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: houses.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final house = houses[index];
        return HouseWidget(
          title: house.title,
          rooms: house.rooms,
          bathrooms: house.bathrooms,
          landSize: house.landSize,
          image: house.image,
          onEdit: () {
            // TODO: Handle edit action
          },
        );
      },
    );
  }
}

class House {
  final String title;
  final int rooms;
  final int bathrooms;
  final int landSize;
  final String image;

  House({
    required this.title,
    required this.rooms,
    required this.bathrooms,
    required this.landSize,
    required this.image,
  });
}
