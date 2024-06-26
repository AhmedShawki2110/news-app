import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}


class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isDataLoading = true;


  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }


  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getNews(category: widget.category);
    isDataLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isDataLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : NewsListView(articles: articles);
  }
}

