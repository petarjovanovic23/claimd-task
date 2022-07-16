import 'package:claimd_task/k.dart';
import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: 0,
        decoration: const BoxDecoration(
          color: Color(0xfffea814),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // const Text(
            //   K.testimonialHeadline,
            //   style: TextStyle(fontSize: 42, fontStyle: FontStyle.italic, color: Colors.white, fontFamily: K.fontFamilyIbarra),
            // ),
            Container(
              padding: const EdgeInsets.only(top: 72.0, bottom: 24.0),
              width: 1080,
              child: Center(child: Text(K.testimonial, textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle1)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(radius: 42, backgroundImage: NetworkImage(K.testimonialAvatar)),
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
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }

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
}
