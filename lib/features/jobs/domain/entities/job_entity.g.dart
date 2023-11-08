// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JobEntityAdapter extends TypeAdapter<JobEntity> {
  @override
  final int typeId = 6;

  @override
  JobEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JobEntity(
      name: fields[0] as String?,
      image: fields[1] as String?,
      jobTimeType: fields[2] as String?,
      jobType: fields[3] as String?,
      jobLevel: fields[4] as String?,
      jobDescription: fields[5] as String?,
      jobSkill: fields[6] as String?,
      compName: fields[7] as String?,
      compEmail: fields[8] as String?,
      compWebsite: fields[9] as String?,
      aboutCompany: fields[10] as String?,
      location: fields[11] as String?,
      salary: fields[12] as String?,
      id: fields[13] as int?,
      favorites: fields[14] as int?,
      createdAt: fields[16] as DateTime?,
      updatedAt: fields[17] as DateTime?,
      expired: fields[15] as int?,
      isSaved: fields[18] as bool,
      isSubmitted: fields[19] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, JobEntity obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.jobTimeType)
      ..writeByte(3)
      ..write(obj.jobType)
      ..writeByte(4)
      ..write(obj.jobLevel)
      ..writeByte(5)
      ..write(obj.jobDescription)
      ..writeByte(6)
      ..write(obj.jobSkill)
      ..writeByte(7)
      ..write(obj.compName)
      ..writeByte(8)
      ..write(obj.compEmail)
      ..writeByte(9)
      ..write(obj.compWebsite)
      ..writeByte(10)
      ..write(obj.aboutCompany)
      ..writeByte(11)
      ..write(obj.location)
      ..writeByte(12)
      ..write(obj.salary)
      ..writeByte(13)
      ..write(obj.id)
      ..writeByte(14)
      ..write(obj.favorites)
      ..writeByte(15)
      ..write(obj.expired)
      ..writeByte(16)
      ..write(obj.createdAt)
      ..writeByte(17)
      ..write(obj.updatedAt)
      ..writeByte(18)
      ..write(obj.isSaved)
      ..writeByte(19)
      ..write(obj.isSubmitted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
