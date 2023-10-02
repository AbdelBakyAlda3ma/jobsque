// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PortfolioEntityAdapter extends TypeAdapter<PortfolioEntity> {
  @override
  final int typeId = 3;

  @override
  PortfolioEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PortfolioEntity(
      name: fields[0] as String?,
      cvFile: fields[1] as String?,
      image: fields[2] as String?,
      userId: fields[3] as int?,
      updatedAt: fields[4] as String?,
      createdAt: fields[5] as String?,
      id: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, PortfolioEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.cvFile)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.userId)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PortfolioEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
