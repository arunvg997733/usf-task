import 'package:flutter/material.dart';
import 'package:usftask/core/constant.dart';

class PageViewContainer extends StatelessWidget {
  const PageViewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150,
          width: 100,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/Image.jpeg'), fit: BoxFit.cover),
              color: kBlue,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Zipline Training',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: kWhite)),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Color.fromARGB(255, 215, 180, 26),
                      child: Icon(
                        Icons.star,
                        color: kWhite,
                        size: 10,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Eperiance the ultimate thrill',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: kWhite)),
                const Text('with our Zipline Training',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: kWhite)),
                const Text('program',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: kWhite)),
                const Expanded(child: SizedBox()),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(95, 255, 255, 255)),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 255, 203, 59)),
                        child: const Center(
                            child: Text('Take a look',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: kBlack))),
                      ),
                      const Spacer(),
                      const Text('AED 1500    ',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kWhite))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
