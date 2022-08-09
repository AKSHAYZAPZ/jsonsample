// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultResp _$ResultRespFromJson(Map<String, dynamic> json) => ResultResp(
      triviatext: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ResultRespToJson(ResultResp instance) =>
    <String, dynamic>{
      'text': instance.triviatext,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
