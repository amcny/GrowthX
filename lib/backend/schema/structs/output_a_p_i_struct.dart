// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OutputAPIStruct extends BaseStruct {
  OutputAPIStruct({
    String? image,
    String? title,
  })  : _image = image,
        _title = title;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static OutputAPIStruct fromMap(Map<String, dynamic> data) => OutputAPIStruct(
        image: data['image'] as String?,
        title: data['title'] as String?,
      );

  static OutputAPIStruct? maybeFromMap(dynamic data) => data is Map
      ? OutputAPIStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static OutputAPIStruct fromSerializableMap(Map<String, dynamic> data) =>
      OutputAPIStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OutputAPIStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OutputAPIStruct &&
        image == other.image &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([image, title]);
}

OutputAPIStruct createOutputAPIStruct({
  String? image,
  String? title,
}) =>
    OutputAPIStruct(
      image: image,
      title: title,
    );
