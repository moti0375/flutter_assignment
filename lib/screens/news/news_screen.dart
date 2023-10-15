import 'package:flutter/material.dart';
import 'package:flutter_assignment/core/auth/auth_bloc.dart';
import 'package:flutter_assignment/data/model/news/news_post.dart';
import 'package:flutter_assignment/di/di_config.dart';
import 'package:flutter_assignment/navigation/routes.dart';
import 'package:flutter_assignment/presentation/model/news_ui_model.dart';
import 'package:flutter_assignment/screens/news/news_bloc.dart';
import 'package:flutter_assignment/ui/news_feed_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Feed"),
        actions: _buildActions(context),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) => state.when(
            initialState: () {
              context.read<NewsBloc>().add(const NewsEvent.fetchNews());
              return _showProgressIndicator();
            },
            loading: () => _showProgressIndicator(),
            ready: (newsUiModel) => _showNewsFeed(newsUiModel, context)),
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => BlocProvider.of<AuthBloc>(context, listen: false).add(const AuthEvent.signedOut()),
        icon: const Icon(Icons.logout),
      ),
      PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 0,
              child: Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  Expanded(
                    child: Text("English", style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
                  ),
                ],
              )),
          PopupMenuItem(
            value: 1,
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  color: Theme.of(context).iconTheme.color,
                ),
                Expanded(
                  child: Text("Hebrew", style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
                ),
              ],
            ),
          )
        ],
        onSelected: (item) => _onActionSelected(item, context),
      ),
    ];
  }

  void _onActionSelected(item, BuildContext context) {
    if (item == 0) {
      print("English selected");
      context.read<NewsBloc>().add(const NewsEvent.onLanguageSelected("en"));
    }
    if (item == 1) {
      context.read<NewsBloc>().add(const NewsEvent.onLanguageSelected("he"));
    }
  }

  Widget _showProgressIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _showNewsFeed(NewsUiModel uiModel, BuildContext context) {
    if (uiModel.news.isEmpty) {
      return const Center(
        child: Text("No news available"),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (uiModel.news.isNotEmpty && uiModel.categories.isNotEmpty)
          SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: uiModel.categories.length,
                itemBuilder: (context, index) => SizedBox(height: 100, child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Chip(label: Text(uiModel.categories[index],), shadowColor: Colors.black,),
                ))),
          ),
        Expanded(
            child: ListView.builder(
                itemCount: uiModel.news.length, itemBuilder: (context, index) => NewsFeedItem(post: uiModel.news[index], onClick: () => _navigateToDetailsScreen(uiModel.news[index], uiModel.categories, context),))),
      ],
    );
  }

  _navigateToDetailsScreen(NewsPost post, List<String> categories, BuildContext context) {
    Navigator.of(context).pushNamed(DETAILS, arguments: {"post": post, "categories": categories});
  }


  static Widget create() {
    return BlocProvider<NewsBloc>(create: (context) => getIt<NewsBloc>(),
      child: const NewsScreen(),);
  }
}
