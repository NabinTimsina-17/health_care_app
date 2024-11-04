import 'package:flutter/material.dart';

class DoctorDetail {
  String image;
  String categoryImage;
  String drName;
  String drCategory;
  Color containerColor;
  Color color;
  String date;
  int noOfDoctor;
  int time1;
  int time2;
  int time3;
  String consultainTime;
  String aboutDoctor;

    DoctorDetail({
      required this.containerColor,
      required this.color,
      required this.image,
      required this.categoryImage,
      required this.drName,
      required this.drCategory,
      required this.date,
      required this.noOfDoctor,
      required this.time1,
      required this.time2,
      required this.time3,
      required this.consultainTime,
      required this.aboutDoctor
    });
}

List<DoctorDetail> doctorDetails = [
  DoctorDetail(
    image: "Images/doctor.png",
    categoryImage: 'Images/teeth.png',
    containerColor: Colors.white,
    color: Colors.white,
    drName: 'Dr. Jason',
    drCategory: 'Dental Surgeon',
    noOfDoctor: 79,
    date: '15\n Jan',
    time1: 9,
    aboutDoctor: 
    "It seems like you're referring to a dentist who specializes in oral surgery. Oral and maxillofacial surgeons are dental specialists who are trained to perform surgical procedures on the mouth, jaws, face and neck",
    time2: 11,
    time3: 16,
    consultainTime: "Sunday . 09:00 am - 10:00 am",
  ),
    DoctorDetail(
    image: "Images/doctor1.png",
    categoryImage: 'Images/heart.png',
      containerColor: const Color(0xFFFCEFDF),
      color: const Color(0xFFFF8906),
    drName: 'Dr. Johan',
    drCategory: 'Heart Surgeon',
    noOfDoctor: 70,
    date: '11\n Feb',
    time1: 8,
    aboutDoctor: 
    "A heart surgeon, also known as cardiac surgeon, is a highly trained medical professional who specializes in surgical procedures of the heart and blood vessels.They perform surgeries to treat various conditions affecting the heart.",
    time2: 10,
    time3: 12,
    consultainTime: "Monday . 08:00 am - 12:00 am",

  ),
    DoctorDetail(
    image: "Images/doctor2.png",
    categoryImage: 'Images/eye.png',
    containerColor: const Color(0xFFEEF0FF),
    color: const Color(0xFF6D7BCE),
    drName: 'Dr. Smith',
    drCategory: 'Eye Surgeon',
    noOfDoctor: 55,
    date: '05\n April',
    time1: 6,
    aboutDoctor: 
    "An eye surgeon, also known as ophthalmologist, specializes in the medical and surgical treatment of diseases and conditions related to the eyes. Opthalmologists undergo extensive training, including medical school, internship",
    time2: 10,
    time3: 18,
    consultainTime: "Sunday . 09:00 am - 11:00 am",
  ),
    DoctorDetail(
    image: "Images/doctor3.png",
    categoryImage: 'Images/skeleton1.png',
    containerColor: Colors.white,
    color: Colors.white,
    drName: 'Dr. Dhoni',
    drCategory: 'Skeleton Surgeon',
    noOfDoctor: 99,
    date: '10\n Dec',
    time1: 7,
    aboutDoctor: 
    "The term skeleton surgery isn't commonly used in medical practice. However, based on the context, it sounds like you might be referring to orthopedic surgeons, who specializes in the diagnosis, treatment and surgical management. ",
    time2: 11,
    time3: 18,
    consultainTime: "Friday . 08:00 am - 11:00 am",
  ),
    DoctorDetail(
    image: "Images/doctor4.png",
    categoryImage: 'Images/lungs.png',
    containerColor: Colors.white,
    color: Colors.white,
    drName: 'Dr. Jason',
    drCategory: 'Lungs Surgeon',
    noOfDoctor: 79,
    date: '15\n Jan',
    time1: 9,
    aboutDoctor: 
    "It seems like you're referring to a dentist who specializes in oral surgery. Oral and maxillofacial surgeons are dental specialists who are trained to perform surgical procedures on the mouth, jaws, face and neck",
    time2: 11,
    time3: 16,
    consultainTime: "Sunday . 09:00 am - 10:00 am",
  ),
];