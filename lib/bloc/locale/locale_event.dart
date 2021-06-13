part of 'locale_bloc.dart';

@immutable
abstract class LocaleEvent {
  const LocaleEvent();
}

class ChangerLocale extends LocaleEvent {
  final int index;

  const ChangerLocale(this.index);
}
