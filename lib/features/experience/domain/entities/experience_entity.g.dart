// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExperienceEntityAdapter extends TypeAdapter<ExperienceEntity> {
  @override
  final int typeId = 2;

  @override
  ExperienceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExperienceEntity(
      userId: fields[0] as String?,
      postion: fields[1] as String?,
      typeWork: fields[2] as String?,
      compName: fields[3] as String?,
      location: fields[4] as String?,
      start: fields[5] as String?,
      updatedAt: fields[6] as String?,
      createdAt: fields[7] as String?,
      id: fields[8] as int?,
      isCurrentlyWorkingInThisRole: fields[9] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, ExperienceEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.postion)
      ..writeByte(2)
      ..write(obj.typeWork)
      ..writeByte(3)
      ..write(obj.compName)
      ..writeByte(4)
      ..write(obj.location)
      ..writeByte(5)
      ..write(obj.start)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.id)
      ..writeByte(9)
      ..write(obj.isCurrentlyWorkingInThisRole);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExperienceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
