import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:travelnews/constant/colors.dart';
import 'package:travelnews/constant/textStyle.dart';

class VideoCard extends StatelessWidget {
  final String postingTitle;
  final String postingView;
  final String postingImage;
  const VideoCard(
      {super.key,
      required this.postingTitle,
      required this.postingView,
      required this.postingImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 208,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: CustomColor.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  postingImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  postingTitle,
                  style: CustomTextStyle.text5.copyWith(
                      color: CustomColor.black, fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        child: SvgPicture.asset(
                          "assets/icons/eye.svg",
                          height: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        postingView,
                        style: CustomTextStyle.text5.copyWith(
                            color: CustomColor.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
