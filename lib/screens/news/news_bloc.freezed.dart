// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function(String lang) onLanguageSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNews,
    TResult? Function(String lang)? onLanguageSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function(String lang)? onLanguageSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNews value) fetchNews,
    required TResult Function(OnLanguageSelected value) onLanguageSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchNews value)? fetchNews,
    TResult? Function(OnLanguageSelected value)? onLanguageSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNews value)? fetchNews,
    TResult Function(OnLanguageSelected value)? onLanguageSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchNewsImplCopyWith<$Res> {
  factory _$$FetchNewsImplCopyWith(
          _$FetchNewsImpl value, $Res Function(_$FetchNewsImpl) then) =
      __$$FetchNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchNewsImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$FetchNewsImpl>
    implements _$$FetchNewsImplCopyWith<$Res> {
  __$$FetchNewsImplCopyWithImpl(
      _$FetchNewsImpl _value, $Res Function(_$FetchNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchNewsImpl implements FetchNews {
  const _$FetchNewsImpl();

  @override
  String toString() {
    return 'NewsEvent.fetchNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function(String lang) onLanguageSelected,
  }) {
    return fetchNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNews,
    TResult? Function(String lang)? onLanguageSelected,
  }) {
    return fetchNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function(String lang)? onLanguageSelected,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNews value) fetchNews,
    required TResult Function(OnLanguageSelected value) onLanguageSelected,
  }) {
    return fetchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchNews value)? fetchNews,
    TResult? Function(OnLanguageSelected value)? onLanguageSelected,
  }) {
    return fetchNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNews value)? fetchNews,
    TResult Function(OnLanguageSelected value)? onLanguageSelected,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews(this);
    }
    return orElse();
  }
}

abstract class FetchNews implements NewsEvent {
  const factory FetchNews() = _$FetchNewsImpl;
}

/// @nodoc
abstract class _$$OnLanguageSelectedImplCopyWith<$Res> {
  factory _$$OnLanguageSelectedImplCopyWith(_$OnLanguageSelectedImpl value,
          $Res Function(_$OnLanguageSelectedImpl) then) =
      __$$OnLanguageSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lang});
}

/// @nodoc
class __$$OnLanguageSelectedImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$OnLanguageSelectedImpl>
    implements _$$OnLanguageSelectedImplCopyWith<$Res> {
  __$$OnLanguageSelectedImplCopyWithImpl(_$OnLanguageSelectedImpl _value,
      $Res Function(_$OnLanguageSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
  }) {
    return _then(_$OnLanguageSelectedImpl(
      null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnLanguageSelectedImpl implements OnLanguageSelected {
  const _$OnLanguageSelectedImpl(this.lang);

  @override
  final String lang;

  @override
  String toString() {
    return 'NewsEvent.onLanguageSelected(lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLanguageSelectedImpl &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLanguageSelectedImplCopyWith<_$OnLanguageSelectedImpl> get copyWith =>
      __$$OnLanguageSelectedImplCopyWithImpl<_$OnLanguageSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function(String lang) onLanguageSelected,
  }) {
    return onLanguageSelected(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNews,
    TResult? Function(String lang)? onLanguageSelected,
  }) {
    return onLanguageSelected?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function(String lang)? onLanguageSelected,
    required TResult orElse(),
  }) {
    if (onLanguageSelected != null) {
      return onLanguageSelected(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNews value) fetchNews,
    required TResult Function(OnLanguageSelected value) onLanguageSelected,
  }) {
    return onLanguageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchNews value)? fetchNews,
    TResult? Function(OnLanguageSelected value)? onLanguageSelected,
  }) {
    return onLanguageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNews value)? fetchNews,
    TResult Function(OnLanguageSelected value)? onLanguageSelected,
    required TResult orElse(),
  }) {
    if (onLanguageSelected != null) {
      return onLanguageSelected(this);
    }
    return orElse();
  }
}

abstract class OnLanguageSelected implements NewsEvent {
  const factory OnLanguageSelected(final String lang) =
      _$OnLanguageSelectedImpl;

  String get lang;
  @JsonKey(ignore: true)
  _$$OnLanguageSelectedImplCopyWith<_$OnLanguageSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<NewsPost> news, List<String> categories)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<NewsPost> news, List<String> categories)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<NewsPost> news, List<String> categories)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(Loading value) loading,
    required TResult Function(Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(Loading value)? loading,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'NewsState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<NewsPost> news, List<String> categories)
        ready,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<NewsPost> news, List<String> categories)? ready,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<NewsPost> news, List<String> categories)? ready,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(Loading value) loading,
    required TResult Function(Ready value) ready,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ready value)? ready,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(Loading value)? loading,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialState implements NewsState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<NewsPost> news, List<String> categories)
        ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<NewsPost> news, List<String> categories)? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<NewsPost> news, List<String> categories)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(Loading value) loading,
    required TResult Function(Ready value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ready value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(Loading value)? loading,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NewsState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsPost> news, List<String> categories});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? categories = null,
  }) {
    return _then(_$ReadyImpl(
      null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsPost>,
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements Ready {
  const _$ReadyImpl(final List<NewsPost> news, final List<String> categories)
      : _news = news,
        _categories = categories;

  final List<NewsPost> _news;
  @override
  List<NewsPost> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'NewsState.ready(news: $news, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_news),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<NewsPost> news, List<String> categories)
        ready,
  }) {
    return ready(news, categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<NewsPost> news, List<String> categories)? ready,
  }) {
    return ready?.call(news, categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<NewsPost> news, List<String> categories)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(news, categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(Loading value) loading,
    required TResult Function(Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(Loading value)? loading,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements NewsState {
  const factory Ready(
      final List<NewsPost> news, final List<String> categories) = _$ReadyImpl;

  List<NewsPost> get news;
  List<String> get categories;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
