// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SchoolsStruct extends BaseStruct {
  SchoolsStruct({
    List<LatLng>? latlng,
  }) : _latlng = latlng;

  // "Latlng" field.
  List<LatLng>? _latlng;
  List<LatLng> get latlng => _latlng ?? const [];
  set latlng(List<LatLng>? val) => _latlng = val;

  void updateLatlng(Function(List<LatLng>) updateFn) {
    updateFn(_latlng ??= []);
  }

  bool hasLatlng() => _latlng != null;

  static SchoolsStruct fromMap(Map<String, dynamic> data) => SchoolsStruct(
        latlng: getDataList(data['Latlng']),
      );

  static SchoolsStruct? maybeFromMap(dynamic data) =>
      data is Map ? SchoolsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Latlng': _latlng,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Latlng': serializeParam(
          _latlng,
          ParamType.LatLng,
          isList: true,
        ),
      }.withoutNulls;

  static SchoolsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SchoolsStruct(
        latlng: deserializeParam<LatLng>(
          data['Latlng'],
          ParamType.LatLng,
          true,
        ),
      );

  @override
  String toString() => 'SchoolsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SchoolsStruct && listEquality.equals(latlng, other.latlng);
  }

  @override
  int get hashCode => const ListEquality().hash([latlng]);
}

SchoolsStruct createSchoolsStruct() => SchoolsStruct();
