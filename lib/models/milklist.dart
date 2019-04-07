import 'package:flutter/material.dart';
import 'milkmenu.dart';

class Milklist {
  static List<Milkmenu> milklist = [
    Milkmenu(
        name: "นมจุฬา",
        background: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromRGBO(255, 182, 193, 1.0),
            const Color.fromRGBO(255, 20, 193, 1.0)
          ],
        ),
        subtitle: "นมชมพู",
        image: "assets/images/pink.jpg"),
    Milkmenu(
        name: "นมธรรมศาสตร์",
        background: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromRGBO(255, 218, 185, 1.0),
            const Color.fromRGBO(255, 164, 0, 1.0)
          ],
        ),
        subtitle: "ชานมเย็น",
        image: "assets/images/orange.jpg"),
    Milkmenu(
        name: "นมเกษตร",
        background: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromRGBO(127, 255, 212, 1.0),
            const Color.fromRGBO(46, 139, 87, 1.0)
          ],
        ),
        subtitle: "นมชาเขียว",
        image: "assets/images/green.jpg"),
    Milkmenu(
        name: "นมมศว",
        background: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromRGBO(135, 206, 235, 1.0),
            const Color.fromRGBO(16, 78, 139, 1.0)
          ],
        ),
        subtitle: "นมบลูมิ้นท์",
        image: "assets/images/blue.jpg"),
  ];
}
