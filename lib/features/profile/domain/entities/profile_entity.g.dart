// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileEntityAdapter extends TypeAdapter<ProfileEntity> {
  @override
  final int typeId = 0;

  @override
  ProfileEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileEntity(
      id: fields[0] as int?,
      userId: fields[1] as int?,
      name: fields[2] as String?,
      email: fields[3] as String?,
      mobile: fields[4] as String?,
      address: fields[5] as String?,
      language: fields[6] as String?,
      interestedWork: (fields[7] as List?)?.cast<String>(),
      offlinePlace: (fields[8] as List?)?.cast<String>(),
      remotePlace: fields[9] as bool?,
      bio: fields[10] as String?,
      education: fields[11] as EducationModel?,
      experience: fields[12] as ExperienceModel?,
      personalDetailed: fields[13] as String?,
      createdAt: fields[14] as String?,
      updatedAt: fields[15] as String?,
      numbersOfPortfolios: fields[16] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileEntity obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.mobile)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.language)
      ..writeByte(7)
      ..write(obj.interestedWork)
      ..writeByte(8)
      ..write(obj.offlinePlace)
      ..writeByte(9)
      ..write(obj.remotePlace)
      ..writeByte(10)
      ..write(obj.bio)
      ..writeByte(11)
      ..write(obj.education)
      ..writeByte(12)
      ..write(obj.experience)
      ..writeByte(13)
      ..write(obj.personalDetailed)
      ..writeByte(14)
      ..write(obj.createdAt)
      ..writeByte(15)
      ..write(obj.updatedAt)
      ..writeByte(16)
      ..write(obj.numbersOfPortfolios);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
