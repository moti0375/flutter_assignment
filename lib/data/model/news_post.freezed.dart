// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsPost _$NewsPostFromJson(Map<String, dynamic> json) {
  return _NewsPost.fromJson(json);
}

/// @nodoc
mixin _$NewsPost {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<String> get category => throw _privateConstructorUsedError;
  String get published => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsPostCopyWith<NewsPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsPostCopyWith<$Res> {
  factory $NewsPostCopyWith(NewsPost value, $Res Function(NewsPost) then) =
      _$NewsPostCopyWithImpl<$Res, NewsPost>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String url,
      String author,
      String image,
      String language,
      List<String> category,
      String published});
}

/// @nodoc
class _$NewsPostCopyWithImpl<$Res, $Val extends NewsPost>
    implements $NewsPostCopyWith<$Res> {
  _$NewsPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? author = null,
    Object? image = null,
    Object? language = null,
    Object? category = null,
    Object? published = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsPostImplCopyWith<$Res>
    implements $NewsPostCopyWith<$Res> {
  factory _$$NewsPostImplCopyWith(
          _$NewsPostImpl value, $Res Function(_$NewsPostImpl) then) =
      __$$NewsPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String url,
      String author,
      String image,
      String language,
      List<String> category,
      String published});
}

/// @nodoc
class __$$NewsPostImplCopyWithImpl<$Res>
    extends _$NewsPostCopyWithImpl<$Res, _$NewsPostImpl>
    implements _$$NewsPostImplCopyWith<$Res> {
  __$$NewsPostImplCopyWithImpl(
      _$NewsPostImpl _value, $Res Function(_$NewsPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? author = null,
    Object? image = null,
    Object? language = null,
    Object? category = null,
    Object? published = null,
  }) {
    return _then(_$NewsPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsPostImpl implements _NewsPost {
  _$NewsPostImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.url,
      required this.author,
      required this.image,
      required this.language,
      required final List<String> category,
      required this.published})
      : _category = category;

  factory _$NewsPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsPostImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String author;
  @override
  final String image;
  @override
  final String language;
  final List<String> _category;
  @override
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  final String published;

  @override
  String toString() {
    return 'NewsPost(id: $id, title: $title, description: $description, url: $url, author: $author, image: $image, language: $language, category: $category, published: $published)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.published, published) ||
                other.published == published));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      url,
      author,
      image,
      language,
      const DeepCollectionEquality().hash(_category),
      published);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsPostImplCopyWith<_$NewsPostImpl> get copyWith =>
      __$$NewsPostImplCopyWithImpl<_$NewsPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsPostImplToJson(
      this,
    );
  }
}

abstract class _NewsPost implements NewsPost {
  factory _NewsPost(
      {required final String id,
      required final String title,
      required final String description,
      required final String url,
      required final String author,
      required final String image,
      required final String language,
      required final List<String> category,
      required final String published}) = _$NewsPostImpl;

  factory _NewsPost.fromJson(Map<String, dynamic> json) =
      _$NewsPostImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get url;
  @override
  String get author;
  @override
  String get image;
  @override
  String get language;
  @override
  List<String> get category;
  @override
  String get published;
  @override
  @JsonKey(ignore: true)
  _$$NewsPostImplCopyWith<_$NewsPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
