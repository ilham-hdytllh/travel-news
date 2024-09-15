import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:travelnews/constant/colors.dart';
import 'package:travelnews/constant/textStyle.dart';
import 'package:travelnews/view/detail/widgets/image_carousel.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int active = 0;

  List<Widget> images = [
    const ImageCarousel(
      image: "assets/images/detail.png",
    ),
    const ImageCarousel(
      image: "assets/images/detail.png",
    ),
    const ImageCarousel(
      image: "assets/images/detail.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColor.backgroundColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 600,
                width: double.infinity,
                child: CarouselSlider(
                  items: images,
                  options: CarouselOptions(
                    height: 600,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    onPageChanged: (int index, callback) {
                      active = index;
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.height / 2) - 20,
              left: 0,
              right: 0,
              bottom: (MediaQuery.of(context).size.height / 2) + 20,
              child: Center(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == active) {
                        return SvgPicture.asset(
                            "assets/images/circle_active.svg");
                      } else {
                        return SvgPicture.asset("assets/images/circle.svg");
                      }
                    }),
              ),
            ),
            Positioned(
              top: 45,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: CustomColor.white,
                        ),
                      ),
                      child: Center(
                          child: SvgPicture.asset("assets/icons/back.svg")),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: CustomColor.white,
                        ),
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        "assets/icons/bookmark.svg",
                        color: CustomColor.white,
                      )),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CustomColor.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Unravel mysteries\nof the Maldives",
                        style: CustomTextStyle.text1.copyWith(
                            color: CustomColor.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 54,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: CustomColor.greyBorder),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              minRadius: 26,
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                  "assets/images/detail_account.png"),
                            ),
                            Text(
                              "Keanu Carpent",
                              style: CustomTextStyle.text5.copyWith(
                                  color: CustomColor.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "May 17",
                              style: CustomTextStyle.text5.copyWith(
                                  color: CustomColor.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle_rounded,
                              color: CustomColor.grey,
                              size: 5,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "8 min read",
                              style: CustomTextStyle.text5.copyWith(
                                  color: CustomColor.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never",
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
