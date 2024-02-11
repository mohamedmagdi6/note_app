import 'package:hive/hive.dart';

//steps to generate typeAdaptor :

part 'note_model.g.dart'; // #1  this file is resprnsible to generate typeAdaptor

@HiveType(typeId: 0) // #2 typeId is unique , it's bolong to this class .
class NoteModel extends HiveObject {
  @HiveField(0) // #3  this hiveField Id not unique outside this class.
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.color,
    required this.date,
    required this.subTitle,
  });
}
