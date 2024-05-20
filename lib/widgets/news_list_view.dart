import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(
            bottom: 20.0,
          ),
          child: NewItem(
            articleModel: articles[index],
          ),
        ),
      ),
    );
  }
}
