import 'package:flutter/material.dart';


class GuideCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String buttonText;
  final VoidCallback? onPressed;
  final bool isSelected;

  const GuideCard({
    Key? key,
    required this.name,
    required this.imagePath,
    this.buttonText = 'Pilih',
    this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.blueAccent : Colors.grey,
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: onPressed,
                  child: Text(buttonText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
