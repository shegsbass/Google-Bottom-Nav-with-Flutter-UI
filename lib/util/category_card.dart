import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final iconImagePath;
  final categoryName;

  CategoryCard({required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green.shade100,
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(iconImagePath),
              height: 30,
              color: Colors.green.shade600,
            ),
            const SizedBox(width: 10),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
