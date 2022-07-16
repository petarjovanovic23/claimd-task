import 'package:flutter/material.dart';

import 'avatar.dart';
import '../constants.dart';

class TestimonialAuthor extends StatelessWidget {
  const TestimonialAuthor({Key? key}) : super(key: key);

  Text buildTestimonialWork() {
    return const Text(
      K.testimonialWork,
      style: TextStyle(
        fontSize: 22,
        fontFamily: K.fontFamilyRoboto,
        color: Colors.black,
      ),
    );
  }

  Text buildTestimonialName() {
    return Text(
      K.testimonialName.toUpperCase(),
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        fontFamily: K.fontFamilyRoboto,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Avatar(K.testimonialAvatar),
          const SizedBox(width: 24.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTestimonialName(),
              buildTestimonialWork(),
            ],
          ),
        ],
      ),
    );
  }
}
