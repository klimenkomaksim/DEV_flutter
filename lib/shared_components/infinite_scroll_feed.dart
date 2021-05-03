import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'centered_spinner.dart';
import 'error_message.dart';

class InfiniteScrollFeed extends StatefulWidget {
  final Future<List<dynamic>> Function(int) request;
  final Widget? fakeElement;
  final ValueWidgetBuilder<dynamic> elementBuilder;
  final int fakeItemsCount;

  const InfiniteScrollFeed({
    required this.request,
    required this.elementBuilder,
    this.fakeElement,
    this.fakeItemsCount = 0,
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

  Future<void> _refreshData() async {
    setState(() {
      isLoading = true;
      pageNumber = 1;
    });
    await _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    if (hasError && data.isEmpty) {
      return const ErrorMessage();
    }

    if (isLoading) {
      return _getLoadinWidget();
    }

    return RefreshIndicator(
      onRefresh: _refreshData,
      child: ListView.builder(
          itemBuilder: (context, index) {
            if (index == data.length - _nextPageThreshold) {
              _fetchData();
            }

            final item = data[index];

            return widget.elementBuilder(context, item, null);
          },
          itemCount: data.length),
    );
  }

  Widget _getLoadinWidget() {
    if (widget.fakeElement != null) {
      return ListView.builder(
          itemBuilder: (context, index) {
            return widget.fakeElement!;
          },
          itemCount: widget.fakeItemsCount);
    }

    return const CenteredSpinner();
  }
}
