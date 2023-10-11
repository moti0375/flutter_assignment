import 'package:flutter/material.dart';
import 'package:flutter_assignment/data/model/news_post.dart';

class DetailsScreen extends StatelessWidget {
  late NewsPost post;
  late List<String> categories;

  DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> params = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    post = params?["post"] as NewsPost;
    categories = params?["categories"] as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: _buildPageContent(context),
    );
  }

  Widget _buildPageContent(BuildContext context) {
    return Column(
      children: [
        _buildTitleSection(),
        _buildImageSection(context),
        Expanded(child: _buildDescriptionSection(context)),
        if (categories.isNotEmpty) _buildCategoriesSection(),
        _buildAuthorLinkSection(),
      ],
    );
  }

  Widget _buildTitleSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(post.title),
        Row(
          children: [const Text("Author"), Text(post.author)],
        )
      ],
    );
  }

  Widget _buildImageSection(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.width * 3 / 4, child: Image.network(post.image));
  }

  Widget _buildCategoriesSection() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: Chip(label: Text(categories[index])),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _buildAuthorLinkSection() {
    return Text(post.url);
  }

  Widget _buildDescriptionSection(BuildContext context) {
    return Text(post.description);
  }
}
