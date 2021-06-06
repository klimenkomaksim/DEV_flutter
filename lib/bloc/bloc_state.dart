part of 'main_bloc.dart';

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

class LoadedFeed extends BlocState {
  final List<dynamic> data;

  const LoadedFeed(this.data) : super();
}

class LoadedItem extends BlocState {
  final dynamic data;

  const LoadedItem(this.data) : super();
}
