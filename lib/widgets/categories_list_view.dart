import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CategoriesListView extends StatefulWidget {
  CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  List <CategoryModel> categories =
  [
    CategoryModel(
  image: "images/business.png",
  categoryName: "Business",
  ),
    CategoryModel(
      image: "images/entertainment.jpeg",
      categoryName: "Entertainment",
    ),
    CategoryModel(
      image: "images/health.jpg",
      categoryName: "Health",
    ),
    CategoryModel(
      image: "images/science.jpg",
      categoryName: "Science",
    ),
    CategoryModel(
      image: "images/technology.jpg",
      categoryName: "Technology",
    ),
    CategoryModel(
      image: "images/sports.png",
      categoryName: "Sports",
    ),
    CategoryModel(
      image: "images/general.jpg",
      categoryName: "General",
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child:  Column(
        children: [
          CarouselSlider.builder(
            itemCount: categories.length,
            itemBuilder: (context, index, realIndex) => CategoryCard(
              category: categories[index],
            ),
            options: CarouselOptions(
              onPageChanged: (index, reason){
                setState(() {
                  currentIndex = index;
                });
              },
              viewportFraction: 0.49,
              height: 100,
              enlargeCenterPage: true,
              autoPlay: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.center,
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: categories.length,
              effect: WormEffect(
                spacing: 10,
                radius: 8,
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Colors.grey,
                activeDotColor: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
