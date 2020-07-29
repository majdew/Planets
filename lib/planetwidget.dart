import 'package:flutter/material.dart';
import 'package:planets/constants.dart';

class PlanetWidget extends StatelessWidget {
  final String planetName;
  final String iconImage;

  PlanetWidget(this.planetName, this.iconImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              planetName,
              style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 44,
                  color: const Color(0xff47455f),
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            ),
            Text(
              "Solar System",
              style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 23,
                  color: const Color(0xff47455f),
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text(
                  "Know More ",
                  style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xff47455f),
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: secondaryTextColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
