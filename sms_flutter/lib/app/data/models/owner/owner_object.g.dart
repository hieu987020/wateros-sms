// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerObject _$OwnerObjectFromJson(Map<String, dynamic> json) => OwnerObject(
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Owner.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$OwnerObjectToJson(OwnerObject instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'total': instance.total,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _OwnerObjectRestClient implements OwnerObjectRestClient {
  _OwnerObjectRestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://localhost:3000/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<OwnerObject> getOwnerObjects() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OwnerObject>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/owner',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OwnerObject.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
