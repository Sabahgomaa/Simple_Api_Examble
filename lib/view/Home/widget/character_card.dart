import 'package:flutter/material.dart';

class Charactercard extends StatelessWidget {
  final String img;
  final String name;

  const Charactercard({Key? key, required this.img, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(img),
      Text(name)
      ],
    );
  }
}
