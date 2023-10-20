// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_job_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ApplyJobEntityAdapter extends TypeAdapter<ApplyJobEntity> {
  @override
  final int typeId = 4;

  @override
  ApplyJobEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ApplyJobEntity(
      cvFile: fields[0] as String?,
      name: fields[1] as String?,
      email: fields[2] as String?,
      mobile: fields[3] as String?,
      workType: fields[4] as String?,
      otherFile: fields[5] as String?,
      jobsId: fields[6] as String?,
      userId: fields[7] as String?,
      reviewed: fields[8] as bool?,
      updatedAt: fields[9] as DateTime?,
      createdAt: fields[10] as DateTime?,
      id: fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ApplyJobEntity obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.cvFile)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.mobile)
      ..writeByte(4)
      ..write(obj.workType)
      ..writeByte(5)
      ..write(obj.otherFile)
      ..writeByte(6)
      ..write(obj.jobsId)
      ..writeByte(7)
      ..write(obj.userId)
      ..writeByte(8)
      ..write(obj.reviewed)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApplyJobEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
