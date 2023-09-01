import 'package:flutter/material.dart';
import 'package:green_house/Screens/config/constant.dart';
import 'package:green_house/models/nutrition_model.dart';
import 'package:green_house/models/planing_model.dart';
import 'package:green_house/models/statistics_model.dart';
import 'package:ternav_icons/ternav_icons.dart';

final List<Nutrition> nutrition = [
  Nutrition(
      text: "Temperature",
      lessons: "Friday",
      imageUrl: "lib/img/temperature.png",
      percent: 75,
      backImage: "lib/img/box/box1.png",
      color: kDarkBlue),
  Nutrition(
      text: "Moisture",
      lessons: "Friday",
      imageUrl: "lib/img/moisturizing.png",
      percent: 50,
      backImage: "lib/img/box/box1.png",
      color: kOrange),
  // Nutrition(
  //     text: "Italian",
  //     lessons: "20 Lessons",
  //     imageUrl: "lib/img/pic/img3.png",
  //     percent: 25,
  //     backImage: "lib/img/box/box3.png",
  //     color: kGreen),
  // Nutrition(
  //     text: "German",
  //     lessons: "40 Lessons",
  //     imageUrl: "lib/img/pic/img4.png",
  //     percent: 75,
  //     backImage: "lib/img/box/box4.png",
  //     color: kYellow),
];

final List<Planing> planing = [
  Planing(
    heading: "Reading-Begineer Toipc 1",
    subHeading: "8:00 AM - 10:00 AM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
  Planing(
    heading: "Listening - Intermediate Topic 1",
    subHeading: "03:00 PM - 04:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Speaking - Beginner Topic 1",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Grammar - Intermediate Topic 2",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Listening - Intermediate Topic 1",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Grammar - Intermediate Topic 2",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Speaking - Beginner Topic 1",
    subHeading: "07:00 PM - 08:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Reading-Begineer Toipc 1",
    subHeading: "01:00 PM - 02:00 PM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
];

final List<Statistics> statistics = [
  Statistics(
    title: "Nitrogen",
    number: 75,
  ),
  Statistics(
    title: "Phosphorus",
    number: 88,
  ),
  Statistics(
    title: "Potassium",
    number: 44,
  ),
  Statistics(
    title: "Water Tank",
    number: 80,
  ),
];
