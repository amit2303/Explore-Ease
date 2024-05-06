import 'package:flutter/material.dart';
import 'package:explore_ease/models/category_model.dart';
import 'package:flutter/widgets.dart';
import '../widget/reuseable_text.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/category_model.dart';
import '../models/people_also_like_model.dart';
import '../nav_pages/main_wrapper.dart';
import '../pages/details_page.dart';
import '../widget/reuseable_text.dart';
import '../models/tab_bar_model.dart';
import '../widget/painter.dart';
import '../widget/reuseabale_middle_app_text.dart';

class Bar extends StatefulWidget {
  const Bar({super.key});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Center(
                child: Column(
                  children: [
                    Hero(
                      tag: "fav",
                      child: Icon(
                        Icons.favorite,
                        size: 50.0,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    SizedBox(width: 10),
                    AppText(
                      text: "Favorite",
                      size: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: peopleAlsoLikeModel.length,
                // physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  PeopleAlsoLikeModel current = peopleAlsoLikeModel[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          personData: current,
                          tabData: null,
                          isCameFromPersonSection: true,
                        ),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      width: size.width,
                      height: size.height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: current.day,
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
                              width: size.width * 0.28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    current.image,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: size.height * 0.035,
                                ),
                                AppText(
                                  text: current.title,
                                  size: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: size.height * 0.005,
                                ),
                                AppText(
                                  text: current.location,
                                  size: 14,
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w300,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.015),
                                  child: AppText(
                                    text: "${current.day} Day",
                                    size: 14,
                                    color: Colors.black.withOpacity(0.5),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
