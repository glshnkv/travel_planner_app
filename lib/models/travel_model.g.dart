// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TravelModelAdapter extends TypeAdapter<TravelModel> {
  @override
  final int typeId = 0;

  @override
  TravelModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TravelModel(
      country: fields[0] as String,
      type: fields[1] as String,
      date: fields[2] as DateTime,
      fellowPerson: fields[3] as String,
      comment: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TravelModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.fellowPerson)
      ..writeByte(4)
      ..write(obj.comment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TravelModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
