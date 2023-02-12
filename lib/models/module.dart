// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magisk_module/json_converters/date_time_epoch_converter.dart';
part 'module.freezed.dart';
part 'module.g.dart';

@freezed
class Module with _$Module {
  const factory Module({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'notes_url') required String notesUrl,
    @JsonKey(name: 'prop_url') required String propUrl,
    @JsonKey(name: 'stars', defaultValue: 0) required int stars,
    @JsonKey(name: 'zip_url') required String zipUrl,
    @DateTimeEpochConverter()
    @JsonKey(name: 'last_update')
        required DateTime lastUpdated,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}
