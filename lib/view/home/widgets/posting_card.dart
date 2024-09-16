import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:svg_flutter/svg.dart';
import 'package:travelnews/constant/colors.dart';
import 'package:travelnews/constant/textStyle.dart';
import 'package:travelnews/view/detail_profile/detail_profile.dart';

class PostingCard extends StatelessWidget {
  final String postingTitle;
  final String postingDate;
  final String postingImage;
  final String postingAuthorName;
  final String postingAuthorImage;
  const PostingCard(
      {super.key,
      required this.postingTitle,
      required this.postingDate,
      required this.postingImage,
      required this.postingAuthorName,
      required this.postingAuthorImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 255,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: CustomColor.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 164,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(
                  postingImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DetailProfile()));
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      postingTitle,
                      style: CustomTextStyle.text4.copyWith(
                          color: CustomColor.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            postingAuthorImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              postingAuthorName,
                              style: CustomTextStyle.text5.copyWith(
                                  color: CustomColor.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              postingDate,
                              style: CustomTextStyle.text5.copyWith(
                                  color: CustomColor.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 37,
                          width: 37,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: CustomColor.lightBlue),
                          child: Center(
                            child: SvgPicture.asset("assets/icons/send.svg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
