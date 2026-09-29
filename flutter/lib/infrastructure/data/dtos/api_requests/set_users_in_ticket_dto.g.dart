// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_users_in_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetUsersInTicketDto _$SetUsersInTicketDtoFromJson(Map<String, dynamic> json) =>
    _SetUsersInTicketDto(
      id: json['id'] as String,
      userIds: (json['userIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SetUsersInTicketDtoToJson(
  _SetUsersInTicketDto instance,
) => <String, dynamic>{'id': instance.id, 'userIds': instance.userIds};
