import 'package:claimd_task/widgets/testimonial_author.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({Key? key}) : super(key: key);

  Container buildTestimonialText(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 72.0, bottom: 24.0),
      width: 980,
      child: Center(child: Text(K.testimonial, textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).highlightColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildTestimonialText(context),
            const TestimonialAuthor(),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
