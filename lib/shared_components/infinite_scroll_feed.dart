import 'package:dev_flutter/bloc/feed/feed_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'centered_spinner.dart';
import 'error_message.dart';

class InfiniteScrollFeed extends StatefulWidget {
  final Function eventCreator;
  final Widget? fakeElement;
  final ValueWidgetBuilder<dynamic> elementBuilder;
  final int fakeItemsCount;

  const InfiniteScrollFeed({
    required this.elementBuilder,
    required this.eventCreator,
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
  List<dynamic> data = [];

  void _fetchData({bool initialLoad = false}) {
    final bloc = BlocProvider.of<FeedBloc>(context);

    if (initialLoad) {
      bloc.add(const ClearState());
    }

    final event = widget.eventCreator(pageNumber);
    bloc.add(event);
  }

  void _refreshData() {
    setState(() {
      pageNumber = 1;
    });

    _fetchData();
  }

  @override
  void initState() {
    super.initState();

    _fetchData(initialLoad: true);
  }

  @override
  void deactivate() {
    super.deactivate();

    final bloc = BlocProvider.of<FeedBloc>(context);
    bloc.add(const ClearState());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedBloc, FeedState>(builder: (ctx, state) {
      if (state is FeedInitial) {
        return _getLoadinWidget();
      }

      if (state is FeedError) {
        return const ErrorMessage();
      }

      if (state is LoadedFeed) {
        return _getFeedWidget();
      }

      return const ErrorMessage();
    }, listener: (ctx, state) {
      if (state is LoadedFeed) {
        setState(() {
          data.addAll(state.data);
          pageNumber += 1;
        });
      }
    });
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

  RefreshIndicator _getFeedWidget() {
    return RefreshIndicator(
      onRefresh: () async => _refreshData,
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
}
