// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_applied_job_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ActiveAppliedJobEntityAdapter
    extends TypeAdapter<ActiveAppliedJobEntity> {
  @override
  final int typeId = 5;

  @override
  ActiveAppliedJobEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ActiveAppliedJobEntity(
      job: fields[0] as JobEntity,
      applicationStepProgress: fields[1] as int,
      applyJobEntity: fields[2] as ApplyJobEntity,
    );
  }

  @override
  void write(BinaryWriter writer, ActiveAppliedJobEntity obj) {
    writer
      ..writeByte(0)
      ..write(obj.job)
      ..writeByte(1)
      ..write(obj.applicationStepProgress)
      ..writeByte(2)
      ..write(obj.applyJobEntity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActiveAppliedJobEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
