import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {

  final String profileImagePath;
  final String rating;
  final String profileName;
  final String jobTitle;

  ProfileCard({ required this.profileImagePath, required this.rating, required this.profileName, required this.jobTitle});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green.shade100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                profileImagePath,
                height: 100,
              ),
            ),

            const SizedBox(height: 5),

            Row(
              children: [
                Icon(
                    Icons.star,
                  color: Colors.yellow.shade600,
                ),
                Text(rating)
              ],
            ),

            const SizedBox(height: 10),

            Text(
                profileName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(
                jobTitle,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
