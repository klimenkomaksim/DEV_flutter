import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'error_message.dart';

class InfiniteScrollFeed extends StatefulWidget {
  final Future<dynamic> Function(int) request;
  final Widget fakeElement;
  final ValueWidgetBuilder<dynamic> element;
  final int fakeItemsCount;

  const InfiniteScrollFeed({
    required this.request,
    required this.fakeElement,
    required this.element,
    required this.fakeItemsCount,
    Key? key,
  }) : super(key: key);

  @override
  _InfiniteScrollFeedState createState() => _InfiniteScrollFeedState();
}

class _InfiniteScrollFeedState extends State<InfiniteScrollFeed> {
  static const _nextPageThreshold = 5;
  int pageNumber = 1;
  bool isLoading = false;
  bool hasError = false;
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();

    isLoading = true;
    _fetchData();
  }

  Future<dynamic> _fetchData() async {
    try {
      final response = await widget.request(pageNumber);

      if (response.isEmpty) {
        return setState(() {
          isLoading = false;
          hasError = true;
        });
      }

      setState(() {
        data.addAll(response);
        pageNumber += 1;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        hasError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (hasError && data.isEmpty) {
      return const ErrorMessage();
    }

    if (isLoading) {
      return ListView.builder(
          itemBuilder: (context, index) {
            return widget.fakeElement;
          },
          itemCount: widget.fakeItemsCount);
    }

    return ListView.builder(
        itemBuilder: (context, index) {
          if (index == data.length - _nextPageThreshold) {
            _fetchData();
          }

          final item = data[index];

          return widget.element(context, item, null);

          // return PostPreview(
          //     username: post.username,
          //     avatarUrl: post.profileImage,
          //     postDate: post.publishDate,
          //     title: post.title,
          //     tags: post.tags,
          //     likes: post.likesCount,
          //     comments: post.commentsCount);
        },
        itemCount: data.length);
  }
}
