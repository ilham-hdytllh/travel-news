import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:travelnews/constant/colors.dart';
import 'package:travelnews/constant/textStyle.dart';
import 'package:travelnews/view/detail/detail.dart';
import 'package:travelnews/view/home/widgets/posting_card.dart';
import 'package:travelnews/view/home/widgets/video_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColor.backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 56,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 60,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 55,
                      width: 55,
                      child: Image(
                        image: AssetImage(
                          "assets/images/profile.png",
                        ),
                        fit: BoxFit.cover,
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
                          "Welcome Back!",
                          style: CustomTextStyle.text3
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Monday, 3 October",
                          style: CustomTextStyle.text5.copyWith(
                              fontWeight: FontWeight.w500,
                              color: CustomColor.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: CustomColor.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          hintStyle: CustomTextStyle.text5.copyWith(
                              color: CustomColor.grey,
                              fontWeight: FontWeight.w300),
                          hintText: 'Search for article...',
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: CustomColor.blue,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text(
                        "#Health",
                        style: CustomTextStyle.text5.copyWith(
                            color: CustomColor.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text(
                        "#Music",
                        style: CustomTextStyle.text5.copyWith(
                            color: CustomColor.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text(
                        "#Technology",
                        style: CustomTextStyle.text5.copyWith(
                            color: CustomColor.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text(
                        "#Sports",
                        style: CustomTextStyle.text5.copyWith(
                            color: CustomColor.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Detail()));
                    },
                    child: const PostingCard(
                      postingTitle:
                          "Feel the thrill on the only\nsurf simulator in Maldives 2022",
                      postingDate: "Sep 9, 2022",
                      postingImage: "assets/images/destination1.png",
                      postingAuthorName: "Sang Dong-Min",
                      postingAuthorImage: "assets/images/account_post1.png",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Detail()));
                    },
                    child: const PostingCard(
                      postingTitle:
                          "Hong Kong wins over Wall\nStreet CEOs after lifting strict",
                      postingDate: "Jan 3, 2022",
                      postingImage: "assets/images/destination2.png",
                      postingAuthorName: "Pan Bong",
                      postingAuthorImage: "assets/images/account_post2.png",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Short For You",
                    style: CustomTextStyle.text3
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      "View All",
                      style: CustomTextStyle.text5.copyWith(
                          fontWeight: FontWeight.w400, color: CustomColor.blue),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 88,
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: const [
                  VideoCard(
                    postingTitle: "Top Trending\nIslands in 2022",
                    postingView: "40.999",
                    postingImage: "assets/images/video1.png",
                  ),
                  VideoCard(
                    postingTitle: "China Trading\nin 2022",
                    postingView: "40.999",
                    postingImage: "assets/images/destination1.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
