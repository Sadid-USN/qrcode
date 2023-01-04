import 'package:flutter/material.dart';

class CustomSkeleton extends StatelessWidget {
  const CustomSkeleton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Skelton(
                  height: 40,
                  width: 100,
                ),
                Skelton(
                  height: 30,
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Skelton(
                  height: 20,
                  width: 90,
                ),
                Skelton(
                  height: 20,
                  width: 90,
                ),
                Skelton(
                  height: 20,
                  width: 100,
                ),
              ],
            ),
            // const SizedBox(
            //   height: 40,
            // ),
            // Skelton(
            //   height: 70,
            //   width: MediaQuery.of(context).size.width,
            // ),
            // Skelton(
            //   height: 70,
            //   width: MediaQuery.of(context).size.width,
            // ),
            // Skelton(
            //   height: 70,
            //   width: MediaQuery.of(context).size.width,
            // ),
            // Skelton(
            //   height: 70,
            //   width: MediaQuery.of(context).size.width,
            // ),
            // Skelton(
            //   height: 70,
            //   width: MediaQuery.of(context).size.width,
            // ),
          ],
        ),
      ),
    );
  }
}

class Skelton extends StatelessWidget {
  final double? height;
  final double? width;
  const Skelton({
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.only(left: 16, top: 16, right: 10),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(4.0, 4.0),
            blurRadius: 6.0,
          ),
        ],
        borderRadius: BorderRadius.circular(22.0),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFD8E3E7),
            Color(0xFFC8D5DA),
            Color(0xFFD8E3E7),
          ],
          stops: [
            0.3,
            0.6,
            0.9,
          ],
        ),
        color: Colors.grey[300],
      ),
    );
  }
}

class BodySliderSkeleton extends StatelessWidget {
  const BodySliderSkeleton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Skelton(
          height: 70,
          width: MediaQuery.of(context).size.width,
        ),
        Skelton(
          height: 70,
          width: MediaQuery.of(context).size.width,
        ),
        Skelton(
          height: 70,
          width: MediaQuery.of(context).size.width,
        ),
        Skelton(
          height: 70,
          width: MediaQuery.of(context).size.width,
        ),
        Skelton(
          height: 70,
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(
          height: 70,
        ),
      ],
    );
  }
}
