import 'package:flutter/material.dart';

class HouseWidget extends StatelessWidget {
  final String title;
  final int rooms;
  final int bathrooms;
  final int landSize;
  final String image;
  final VoidCallback? onEditPressed;

  const HouseWidget({
    Key? key,
    required this.title,
    required this.rooms,
    required this.bathrooms,
    required this.landSize,
    required this.image,
    this.onEditPressed, required Null Function() onEdit,
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
                    _buildInfoItem(Icons.hotel, rooms.toString()),
                    const SizedBox(width: 8.0),
                    _buildInfoItem(Icons.bathtub, bathrooms.toString()),
                    const SizedBox(width: 8.0),
                    _buildInfoItem(Icons.landscape, '$landSize sqft'),
                  ],
                ),
              ],
            ),
          ),
          if (onEditPressed != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: onEditPressed,
                child: const Text('Edit'),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String value) {
    return Row(
      children: [
        Icon(icon, size: 16.0),
        const SizedBox(width: 4.0),
        Text(value),
      ],
    );
  }
}
