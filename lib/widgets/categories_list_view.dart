import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});


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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index) => CategoryCard(
          category: categories[index],
        ),
      ),
    );
  }
}
