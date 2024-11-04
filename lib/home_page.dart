import 'package:flutter/material.dart';
import 'package:health_care_app/Model/model.dart';
import 'package:health_care_app/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile and menu icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('Images/menu.png', width: 24, height: 24),
                Image.asset('Images/profile.png', width: 40, height: 40),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Choose your Doctor",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "100+ Available",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 30),
            const SearchBar(),
            const SizedBox(height: 30),
            Row(
              children: [
                const Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Children",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xfffdbfafc),
                  ),
                  child: const Center(
                    child: Text(
                      "Adult",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Horizontal doctor category list
            SizedBox(
              height: 180, // height for doctor categories
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: doctorDetails.length,
                itemBuilder: (context, index) {
                  final doctor = doctorDetails[index];
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: DoctorCategoryCard(doctor: doctor),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Popular Doctors",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Vertical popular doctor list
            Expanded(
              child: ListView.builder(
                itemCount: doctorDetails.length,
                itemBuilder: (context, index) {
                  final doctor = doctorDetails[index];
                  return DoctorListItem(doctor: doctor);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Separate SearchBar widget
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(31, 141, 140, 140),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black54,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Doctor Speciality",
                    hintStyle: TextStyle(
                      color: Colors.black45,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Separate widget for DoctorCategoryCard
class DoctorCategoryCard extends StatelessWidget {
  final DoctorDetail doctor;

  const DoctorCategoryCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(doctor.categoryImage),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            doctor.drCategory,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "${doctor.noOfDoctor} Doctors",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}

// Separate widget for DoctorListItem
class DoctorListItem extends StatelessWidget {
  final DoctorDetail doctor;

  const DoctorListItem({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(doctor: doctor),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Material(
          elevation: 5,
          color: doctor.containerColor,
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Hero(
                  tag: doctor.image,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(doctor.image),
                    radius: 40,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor.drName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        doctor.drCategory,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          TimeContainer(time: doctor.time1),
                          const SizedBox(width: 10),
                          TimeContainer(time: doctor.time2),
                          const SizedBox(width: 10),
                          TimeContainer(time: doctor.time3),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Additional widgets for better readability
class TimeContainer extends StatelessWidget {
  final int time;

  const TimeContainer({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          "$time:00",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
