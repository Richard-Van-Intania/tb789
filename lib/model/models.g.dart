// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationImpl _$$AuthenticationImplFromJson(Map<String, dynamic> json) => _$AuthenticationImpl(
      verification_id: (json['verification_id'] as num).toInt(),
      reference: (json['reference'] as num).toInt(),
      code: (json['code'] as num).toInt(),
      email: json['email'] as String,
      password: json['password'] as String,
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
      users_id: (json['users_id'] as num).toInt(),
    );

Map<String, dynamic> _$$AuthenticationImplToJson(_$AuthenticationImpl instance) => <String, dynamic>{
      'verification_id': instance.verification_id,
      'reference': instance.reference,
      'code': instance.code,
      'email': instance.email,
      'password': instance.password,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'users_id': instance.users_id,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) => _$ProfileImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      profile_uri: json['profile_uri'] as String?,
      cover_uri: json['cover_uri'] as String?,
      information: json['information'] as String?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'profile_uri': instance.profile_uri,
      'cover_uri': instance.cover_uri,
      'information': instance.information,
    };

_$PlatesImpl _$$PlatesImplFromJson(Map<String, dynamic> json) => _$PlatesImpl(
      plates_id: (json['plates_id'] as num).toInt(),
      front_text: json['front_text'] as String,
      plates_type_id: (json['plates_type_id'] as num).toInt(),
      plates_uri: json['plates_uri'] as String?,
      is_selling: json['is_selling'] as bool,
      is_pin: json['is_pin'] as bool,
      total: (json['total'] as num).toInt(),
      add_date: json['add_date'] as String,
      front_number: (json['front_number'] as num).toInt(),
      back_number: (json['back_number'] as num).toInt(),
      vehicle_type_id: (json['vehicle_type_id'] as num).toInt(),
      users_id: (json['users_id'] as num).toInt(),
      special_front_id: (json['special_front_id'] as num).toInt(),
      province_id: (json['province_id'] as num).toInt(),
      information: json['information'] as String?,
      price: (json['price'] as num).toInt(),
      is_temporary: json['is_temporary'] as bool,
    );

Map<String, dynamic> _$$PlatesImplToJson(_$PlatesImpl instance) => <String, dynamic>{
      'plates_id': instance.plates_id,
      'front_text': instance.front_text,
      'plates_type_id': instance.plates_type_id,
      'plates_uri': instance.plates_uri,
      'is_selling': instance.is_selling,
      'is_pin': instance.is_pin,
      'total': instance.total,
      'add_date': instance.add_date,
      'front_number': instance.front_number,
      'back_number': instance.back_number,
      'vehicle_type_id': instance.vehicle_type_id,
      'users_id': instance.users_id,
      'special_front_id': instance.special_front_id,
      'province_id': instance.province_id,
      'information': instance.information,
      'price': instance.price,
      'is_temporary': instance.is_temporary,
    };

_$UniversalIdImpl _$$UniversalIdImplFromJson(Map<String, dynamic> json) => _$UniversalIdImpl(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$UniversalIdImplToJson(_$UniversalIdImpl instance) => <String, dynamic>{
      'id': instance.id,
    };

_$ArraySpecialFrontImpl _$$ArraySpecialFrontImplFromJson(Map<String, dynamic> json) => _$ArraySpecialFrontImpl(
      array: (json['array'] as List<dynamic>).map((e) => SpecialFront.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$ArraySpecialFrontImplToJson(_$ArraySpecialFrontImpl instance) => <String, dynamic>{
      'array': instance.array,
    };

_$SpecialFrontImpl _$$SpecialFrontImplFromJson(Map<String, dynamic> json) => _$SpecialFrontImpl(
      special_front_id: (json['special_front_id'] as num).toInt(),
      front: json['front'] as String,
    );

Map<String, dynamic> _$$SpecialFrontImplToJson(_$SpecialFrontImpl instance) => <String, dynamic>{
      'special_front_id': instance.special_front_id,
      'front': instance.front,
    };

_$PlatesFilterImpl _$$PlatesFilterImplFromJson(Map<String, dynamic> json) => _$PlatesFilterImpl(
      plates_id: (json['plates_id'] as num).toInt(),
      users_id: (json['users_id'] as num).toInt(),
      pattern: json['pattern'] as String,
      plates_type_id: (json['plates_type_id'] as num).toInt(),
      province_id: (json['province_id'] as num).toInt(),
      vehicle_type_id: (json['vehicle_type_id'] as num).toInt(),
      search_text: json['search_text'] as String,
      search_text_pattern_id: (json['search_text_pattern_id'] as num).toInt(),
      search_text_front_number: (json['search_text_front_number'] as num).toInt(),
      search_text_front_text: json['search_text_front_text'] as String,
      search_text_back_number: (json['search_text_back_number'] as num).toInt(),
      back_number: (json['back_number'] as num).toInt(),
      price_under: (json['price_under'] as num).toInt(),
      sort_by: json['sort_by'] as String,
      plates_type_id_list: (json['plates_type_id_list'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
      province_id_list: (json['province_id_list'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$PlatesFilterImplToJson(_$PlatesFilterImpl instance) => <String, dynamic>{
      'plates_id': instance.plates_id,
      'users_id': instance.users_id,
      'pattern': instance.pattern,
      'plates_type_id': instance.plates_type_id,
      'province_id': instance.province_id,
      'vehicle_type_id': instance.vehicle_type_id,
      'search_text': instance.search_text,
      'search_text_pattern_id': instance.search_text_pattern_id,
      'search_text_front_number': instance.search_text_front_number,
      'search_text_front_text': instance.search_text_front_text,
      'search_text_back_number': instance.search_text_back_number,
      'back_number': instance.back_number,
      'price_under': instance.price_under,
      'sort_by': instance.sort_by,
      'plates_type_id_list': instance.plates_type_id_list,
      'province_id_list': instance.province_id_list,
      'limit': instance.limit,
      'offset': instance.offset,
    };

_$PlatesGroupImpl _$$PlatesGroupImplFromJson(Map<String, dynamic> json) => _$PlatesGroupImpl(
      exact: (json['exact'] as List<dynamic>).map((e) => PlatesData.fromJson(e as Map<String, dynamic>)).toList(),
      suggestion: (json['suggestion'] as List<dynamic>).map((e) => PlatesData.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$PlatesGroupImplToJson(_$PlatesGroupImpl instance) => <String, dynamic>{
      'exact': instance.exact,
      'suggestion': instance.suggestion,
    };

_$PlatesDataImpl _$$PlatesDataImplFromJson(Map<String, dynamic> json) => _$PlatesDataImpl(
      plates_id: (json['plates_id'] as num).toInt(),
      front_text: json['front_text'] as String,
      plates_type_id: (json['plates_type_id'] as num).toInt(),
      plates_uri: json['plates_uri'] as String?,
      total: (json['total'] as num).toInt(),
      add_date: json['add_date'] as String,
      front_number: (json['front_number'] as num).toInt(),
      back_number: (json['back_number'] as num).toInt(),
      vehicle_type_id: (json['vehicle_type_id'] as num).toInt(),
      users_id: (json['users_id'] as num).toInt(),
      special_front_id: (json['special_front_id'] as num).toInt(),
      province_id: (json['province_id'] as num).toInt(),
      information: json['information'] as String?,
      price: (json['price'] as num).toInt(),
      name: json['name'] as String,
      profile_uri: json['profile_uri'] as String?,
      liked_plates_id: (json['liked_plates_id'] as num?)?.toInt(),
      saved_plates_id: (json['saved_plates_id'] as num?)?.toInt(),
      liked_store_id: (json['liked_store_id'] as num?)?.toInt(),
      saved_store_id: (json['saved_store_id'] as num?)?.toInt(),
      liked_plates_id_count: (json['liked_plates_id_count'] as num).toInt(),
      saved_plates_id_count: (json['saved_plates_id_count'] as num).toInt(),
      reacts_count: (json['reacts_count'] as num).toInt(),
      rownumber: (json['rownumber'] as num).toInt(),
    );

Map<String, dynamic> _$$PlatesDataImplToJson(_$PlatesDataImpl instance) => <String, dynamic>{
      'plates_id': instance.plates_id,
      'front_text': instance.front_text,
      'plates_type_id': instance.plates_type_id,
      'plates_uri': instance.plates_uri,
      'total': instance.total,
      'add_date': instance.add_date,
      'front_number': instance.front_number,
      'back_number': instance.back_number,
      'vehicle_type_id': instance.vehicle_type_id,
      'users_id': instance.users_id,
      'special_front_id': instance.special_front_id,
      'province_id': instance.province_id,
      'information': instance.information,
      'price': instance.price,
      'name': instance.name,
      'profile_uri': instance.profile_uri,
      'liked_plates_id': instance.liked_plates_id,
      'saved_plates_id': instance.saved_plates_id,
      'liked_store_id': instance.liked_store_id,
      'saved_store_id': instance.saved_store_id,
      'liked_plates_id_count': instance.liked_plates_id_count,
      'saved_plates_id_count': instance.saved_plates_id_count,
      'reacts_count': instance.reacts_count,
      'rownumber': instance.rownumber,
    };

_$UsersFilterImpl _$$UsersFilterImplFromJson(Map<String, dynamic> json) => _$UsersFilterImpl(
      users_id: (json['users_id'] as num).toInt(),
      store_id: (json['store_id'] as num).toInt(),
      search_text: json['search_text'] as String,
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$UsersFilterImplToJson(_$UsersFilterImpl instance) => <String, dynamic>{
      'users_id': instance.users_id,
      'store_id': instance.store_id,
      'search_text': instance.search_text,
      'limit': instance.limit,
      'offset': instance.offset,
    };

_$UsersGroupImpl _$$UsersGroupImplFromJson(Map<String, dynamic> json) => _$UsersGroupImpl(
      exact: (json['exact'] as List<dynamic>).map((e) => UsersData.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$UsersGroupImplToJson(_$UsersGroupImpl instance) => <String, dynamic>{
      'exact': instance.exact,
    };

_$UsersDataImpl _$$UsersDataImplFromJson(Map<String, dynamic> json) => _$UsersDataImpl(
      users_id: (json['users_id'] as num).toInt(),
      name: json['name'] as String,
      created_date: json['created_date'] as String,
      profile_uri: json['profile_uri'] as String?,
      cover_uri: json['cover_uri'] as String?,
      information: json['information'] as String?,
      liked_store_id: (json['liked_store_id'] as num?)?.toInt(),
      saved_store_id: (json['saved_store_id'] as num?)?.toInt(),
      liked_store_id_count: (json['liked_store_id_count'] as num).toInt(),
      saved_store_id_count: (json['saved_store_id_count'] as num).toInt(),
      reacts_count: (json['reacts_count'] as num).toInt(),
      total_assets: (json['total_assets'] as num).toInt(),
      plates_count: (json['plates_count'] as num).toInt(),
      average_score: (json['average_score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UsersDataImplToJson(_$UsersDataImpl instance) => <String, dynamic>{
      'users_id': instance.users_id,
      'name': instance.name,
      'created_date': instance.created_date,
      'profile_uri': instance.profile_uri,
      'cover_uri': instance.cover_uri,
      'information': instance.information,
      'liked_store_id': instance.liked_store_id,
      'saved_store_id': instance.saved_store_id,
      'liked_store_id_count': instance.liked_store_id_count,
      'saved_store_id_count': instance.saved_store_id_count,
      'reacts_count': instance.reacts_count,
      'total_assets': instance.total_assets,
      'plates_count': instance.plates_count,
      'average_score': instance.average_score,
    };
