part of 'locale_bloc.dart';

@immutable
abstract class LocaleState {
  final Locale currentLocale;
  final int localeIndex;

  const LocaleState(this.currentLocale, this.localeIndex);
}

class LocaleInitial extends LocaleState {
  const LocaleInitial(Locale currentLocale, int localeIndex)
      : super(currentLocale, localeIndex);
}

class CurrentLocale extends LocaleState {
  const CurrentLocale(Locale currentLocal, int index)
      : super(currentLocal, index);
}
