import 'package:flutter/material.dart';
import 'package:health_care_app/Model/model.dart';

class DetailPage extends StatelessWidget {
  final DoctorDetail doctor;
  const DetailPage({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top section with doctor's image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Hero(
              tag: doctor.image,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: doctor.containerColor,
                child: Image.asset(
                  doctor.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),

          // Bottom section with doctor's details
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.69,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 27, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Doctor's name and category
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          doctor.drName,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      doctor.drCategory,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // About Doctor section
                    const Text(
                      "About Doctor",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      doctor.aboutDoctor,
                      style: const TextStyle(
                        height: 2,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Upcoming Schedules
                    const Text(
                      "Upcoming Schedules",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: doctor.containerColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 15),
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              color: doctor.color,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                doctor.date,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Consultation",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  doctor.consultainTime,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Back button
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
