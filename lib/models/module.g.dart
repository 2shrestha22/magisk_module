// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Module _$$_ModuleFromJson(Map<String, dynamic> json) => _$_Module(
      id: json['id'] as String,
      notesUrl: json['notes_url'] as String,
      propUrl: json['prop_url'] as String,
      stars: json['stars'] as int? ?? 0,
      zipUrl: json['zip_url'] as String,
      lastUpdated:
          const DateTimeEpochConverter().fromJson(json['last_update'] as int),
    );

Map<String, dynamic> _$$_ModuleToJson(_$_Module instance) => <String, dynamic>{
      'id': instance.id,
      'notes_url': instance.notesUrl,
      'prop_url': instance.propUrl,
      'stars': instance.stars,
      'zip_url': instance.zipUrl,
      'last_update':
          const DateTimeEpochConverter().toJson(instance.lastUpdated),
    };
