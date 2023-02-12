import 'package:freezed_annotation/freezed_annotation.dart';
part 'module_prop.freezed.dart';
part 'module_prop.g.dart';

@freezed
class ModuleProp with _$ModuleProp {
  const factory ModuleProp({
    required String id,
    required String name,
    required String version,
    required String versionCode,
    required String author,
    required String description,
  }) = _ModuleProp;

  factory ModuleProp.fromJson(Map<String, dynamic> json) =>
      _$ModulePropFromJson(json);
}
