// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };

_$_Info _$$_InfoFromJson(Map<String, dynamic> json) => _$_Info(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$$_InfoToJson(_$_Info instance) => <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      image: json['image'] as String,
      episode: json['episode'] as List<dynamic>,
      origin: CharacterOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      location:
          CharacterOrigin.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
      'episode': instance.episode,
      'origin': instance.origin,
      'location': instance.location,
    };

_$_CharacterLocation _$$_CharacterLocationFromJson(Map<String, dynamic> json) =>
    _$_CharacterLocation(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_CharacterLocationToJson(
        _$_CharacterLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
