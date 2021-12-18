import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/services/base.dart';
import 'package:meta/meta.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final API api;

  FeedBloc(this.api) : super(const FeedInitial());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    FeedState state = const FeedError();

    if (event is GetArticles) {
      state = await _getDataByPage(api.article, event.pageNumber);
    } else if (event is GetListings) {
      state = await _getDataByPage(api.listing, event.pageNumber);
    } else if (event is GetPodcasts) {
      state = await _getDataByPage(api.podcast, event.pageNumber);
    } else if (event is GetTags) {
      state = await _getDataByPage(api.tag, event.pageNumber);
    } else if (event is GetVideos) {
      state = await _getDataByPage(api.video, event.pageNumber);
    } else if (event is GetArticlesByTag) {
      state = await _getArticlesByTag(event.pageNumber, event.tagName);
    } else if (event is ClearState) {
      state = const FeedInitial();
    }

    yield state;
  }

  Future<FeedState> _getDataByPage(BaseService service, int pageNumber) async {
    try {
      final response = await service.getByPage(pageNumber);

      if (response.isSuccessful && response.body != null) {
        return LoadedFeed(response.body!);
      }

      return const FeedError();
    } catch (e) {
      return const FeedError();
    }
  }

  Future<FeedState> _getArticlesByTag(int pageNumber, String tagName) async {
    try {
      final response = await api.article.getByTagAndPage(pageNumber, tagName);

      if (response.isSuccessful && response.body != null) {
        return LoadedFeed(response.body!);
      }

      return const FeedError();
    } catch (e) {
      return const FeedError();
    }
  }
}
