import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:travelnews/constant/colors.dart';
import 'package:travelnews/constant/textStyle.dart';

class Post extends StatelessWidget {
  final String image;
  final String category;
  final String title;
  final String date;
  final String hour;
  const Post(
      {super.key,
      required this.image,
      required this.category,
      required this.title,
      required this.date,
      required this.hour});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CustomColor.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "News: $category",
                    style: CustomTextStyle.text6.copyWith(
                        fontWeight: FontWeight.w400, color: CustomColor.grey),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: CustomTextStyle.text4.copyWith(
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                        color: CustomColor.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/calendar.svg",
                                width: 17,
                                color: CustomColor.grey,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                date,
                                style: CustomTextStyle.text6.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: CustomColor.grey),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/clock.svg",
                                width: 17,
                                color: CustomColor.grey,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                hour,
                                style: CustomTextStyle.text6.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: CustomColor.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
