part of 'article_bloc.dart';

@immutable
abstract class BlocState {
  const BlocState();
}

class Initial extends BlocState {
  const Initial();
}

class Error extends BlocState {
  const Error();
}

class Loading extends BlocState {
  const Loading();
}

class Loaded extends BlocState {
  final List<dynamic> data;

  const Loaded(this.data) : super();
}
