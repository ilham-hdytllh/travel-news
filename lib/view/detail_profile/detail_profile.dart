import 'package:flutter/material.dart';
import 'package:travelnews/constant/colors.dart';
import 'package:travelnews/constant/textStyle.dart';
import 'package:travelnews/view/detail_profile/widgets/popular_post.dart';
import 'package:travelnews/view/detail_profile/widgets/post.dart';

class DetailProfile extends StatefulWidget {
  const DetailProfile({super.key});

  @override
  State<DetailProfile> createState() => _DetailProfileState();
}

class _DetailProfileState extends State<DetailProfile> {
  List<String> images = ['destination5.png', 'destination6.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 55),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset("assets/images/account.png",
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Elly Byers",
                          style: CustomTextStyle.text3.copyWith(
                              color: CustomColor.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Authors & Writers",
                          style: CustomTextStyle.text5.copyWith(
                              color: CustomColor.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 42,
                      width: 109,
                      decoration: BoxDecoration(
                        color: CustomColor.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Following",
                          style: CustomTextStyle.text5
                              .copyWith(color: CustomColor.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..",
                  style:
                      CustomTextStyle.text5.copyWith(color: CustomColor.grey),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  height: 95,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: CustomColor.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "54.21k",
                            style: CustomTextStyle.text3.copyWith(
                                color: CustomColor.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Followers",
                            style: CustomTextStyle.text5.copyWith(
                                color: CustomColor.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const VerticalDivider(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "2.11k",
                            style: CustomTextStyle.text3.copyWith(
                                color: CustomColor.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Posts",
                            style: CustomTextStyle.text5.copyWith(
                                color: CustomColor.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const VerticalDivider(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "36.40k",
                            style: CustomTextStyle.text3.copyWith(
                                color: CustomColor.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Followers",
                            style: CustomTextStyle.text5.copyWith(
                                color: CustomColor.white,
                                fontWeight: FontWeight.w400),
                          ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Elly's Post",
                      style: CustomTextStyle.text3
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        "View All",
                        style: CustomTextStyle.text5.copyWith(
                            fontWeight: FontWeight.w400,
                            color: CustomColor.blue),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Post(
                  image: "assets/images/destination3.png",
                  category: "Politics",
                  title:
                      "Iran's raging protests\nFifth Iranian paramilitary me",
                  date: "16th May",
                  hour: "09 : 32 pm"),
              const Post(
                  image: "assets/images/destination4.png",
                  category: "Science",
                  title: "Putin to host ceremony\nannexing occupied Ukrainia",
                  date: "11th May",
                  hour: "10 : 15 am"),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Populer From Elly's",
                      style: CustomTextStyle.text3
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 143,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: PopularPost(image: images[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
