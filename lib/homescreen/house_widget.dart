import 'package:flutter/material.dart';

class HouseWidget extends StatelessWidget {
  final String title;
  final int rooms;
  final int bathrooms;
  final int landSize;
  final String image;
  final VoidCallback onEdit;

  const HouseWidget({
    Key? key,
    required this.title,
    required this.rooms,
    required this.bathrooms,
    required this.landSize,
    required this.image,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
            height: 200.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.hotel, size: 16.0),
                    const SizedBox(width: 4.0),
                    Text('$rooms Rooms'),
                    const SizedBox(width: 16.0),
                    Icon(Icons.bathtub, size: 16.0),
                    const SizedBox(width: 4.0),
                    Text('$bathrooms Bathrooms'),
                    const SizedBox(width: 16.0),
                    Icon(Icons.square_foot, size: 16.0),
                    const SizedBox(width: 4.0),
                    Text('$landSize sqft'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: onEdit,
              child: const Text('Edit'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
