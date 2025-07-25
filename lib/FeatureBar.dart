import 'package:flutter/material.dart';


class FeatureBar extends StatelessWidget {
  const FeatureBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1F2937),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFeatureItem(Icons.code, 'Development Tools'),
          _buildFeatureItem(Icons.lightbulb_outline, 'Be an Entrepreneur'),
          _buildFeatureItem(Icons.school, 'College / University'),
        ],
      ),
    );
  }
}

Widget _buildFeatureItem(IconData icon, String label) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF374151),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF22D3EE), size: 20),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    ),
  );
}
