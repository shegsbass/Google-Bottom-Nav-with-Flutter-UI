import 'package:flutter/material.dart';
import 'package:google_bottom_navigation/util/category_card.dart';
import 'package:google_bottom_navigation/util/profile_card.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Define a list of profile data
  final List<Map<String, String>> profiles = [
    {
      'profileName': 'John Doe',
      'jobTitle': 'Doctor',
    },
    {
      'profileName': 'Alice Smith',
      'jobTitle': 'Nurse',
    },
    {
      'profileName': 'Bob Johnson',
      'jobTitle': 'Surgeon',
    },
    {
      'profileName': 'Emily Brown',
      'jobTitle': 'Pediatrician',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //app bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Shegs Mobile',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    //Profile picture
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.person,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //card how do you feel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Lottie.network(
                          'https://lottie.host/0d22b82d-4082-467e-84e0-fe774e636290/FHXgt8YmJp.json',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      const SizedBox(width: 20),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'How do you feel?',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),

                            const SizedBox(height: 8),

                            const Text(
                              'Fill out your medical card right now',
                              style: TextStyle(color: Colors.white),
                            ),

                            const SizedBox(height: 8),

                            //Button
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.green.shade300,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text(
                                  'Click Here',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // search bar

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'How can we help you?',
                        prefixIconColor: Colors.green.shade200,
                        hintStyle: TextStyle(
                          color: Colors.green.shade200,
                        )),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // horizontal lisview

              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      iconImagePath: 'assets/tooth.png',
                      categoryName: 'Dentist',
                    ),
                    CategoryCard(
                      iconImagePath: 'assets/tooth.png',
                      categoryName: 'Dentist',
                    ),
                    CategoryCard(
                      iconImagePath: 'assets/tooth.png',
                      categoryName: 'Dentist',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
              // doctor list
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Doctor list',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: profiles.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {

                    String profileName = profiles[index]['profileName']!;
                    String jobTitle = profiles[index]['jobTitle']!;

                    return ProfileCard(
                      profileImagePath: 'assets/image-1.jpg',
                      rating: '4.9',
                      profileName: profileName,
                      jobTitle: jobTitle,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
