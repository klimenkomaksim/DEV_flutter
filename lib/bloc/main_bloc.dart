import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/services/base.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class MainBloc extends Bloc<BlocEvent, BlocState> {
  final API api;

  MainBloc(this.api) : super(const Initial());

  @override
  Stream<BlocState> mapEventToState(
    BlocEvent event,
  ) async* {
    BlocState state = const Error();

    // couldn't figure out how to use switch/case in this place
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
    } else if (event is GetArticleById) {
      state = await _getArticlesById(event.id);
    } else if (event is ClearState) {
      state = const Initial();
    }

    yield state;
  }

  Future<BlocState> _getDataByPage(
      BaseRequestService service, int pageNumber) async {
    try {
      final data = await service.getByPage(pageNumber);

      return LoadedFeed(data);
    } catch (e) {
      return const Error();
    }
  }

  Future<BlocState> _getArticlesByTag(int pageNumber, String tagName) async {
    try {
      final articles = await api.article.getByTagAndPage(tagName, pageNumber);

      return LoadedFeed(articles);
    } catch (e) {
      return const Error();
    }
  }

  Future<BlocState> _getArticlesById(int id) async {
    try {
      final article = await api.article.getById(id);

      return LoadedItem(article);
    } catch (e) {
      return const Error();
    }
  }
}
