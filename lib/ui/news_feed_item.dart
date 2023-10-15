import 'package:flutter/material.dart';
import 'package:flutter_assignment/data/model/news/news_post.dart';

class NewsFeedItem extends StatelessWidget {
  final NewsPost post;
  final Function? onClick;
  const NewsFeedItem({super.key, required this.post, this.onClick});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => onClick?.call(),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(post.title),
              if (_validateUrl(post.image))
                Image.network(post.image),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Divider(),
              ),
              Text("Author - ${post.author}", textAlign: TextAlign.end,)
            ],
          ),
        ),
      ),
    );
  }

  bool _validateUrl(String? url) {
    if (url != null) {
      try {
        Uri uri = Uri.parse(url);
        print("_validateUrl: ${uri.host}");
        if(uri.host == "None"){
          return false;
        }
        return true;
      } on Exception catch (_) {
        return false;
      }
    }
    return false;
  }
}
