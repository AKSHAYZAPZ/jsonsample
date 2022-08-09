import 'package:json_annotation/json_annotation.dart';

part 'result_resp.g.dart';

@JsonSerializable()
class ResultResp {
  @JsonKey(name: 'text')
  String? triviatext;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  ResultResp({this.triviatext, this.number, this.found, this.type});

  factory ResultResp.fromJson(Map<String, dynamic> json) {
    return _$ResultRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultRespToJson(this);
}
