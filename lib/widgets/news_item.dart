import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8,),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  articleModel.image??"https://marketplace.canva.com/EAE_sr5pWGo/1/0/1600w/canva-dark-blue-red-white-generic-news-general-news-youtube-banner-VvOVa9LIHAo.jpg",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle??"no short description",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
    );
  }
}
