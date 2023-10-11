// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EducationEntityAdapter extends TypeAdapter<EducationEntity> {
  @override
  final int typeId = 1;

  @override
  EducationEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EducationEntity(
      id: fields[0] as int?,
      universty: fields[1] as String?,
      title: fields[2] as String?,
      start: fields[3] as String?,
      end: fields[4] as String?,
      userId: fields[5] as int?,
      profileId: fields[6] as String?,
      createdAt: fields[7] as String?,
      updatedAt: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, EducationEntity obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.universty)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.start)
      ..writeByte(4)
      ..write(obj.end)
      ..writeByte(5)
      ..write(obj.userId)
      ..writeByte(6)
      ..write(obj.profileId)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EducationEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
