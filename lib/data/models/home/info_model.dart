import 'package:rick_morty/domain/entities/home/info.dart';

class InfoModel extends Info {
  InfoModel({
    required int count,
    required int pages,
    required String next,
    required String prev
  }) : super(
    count: count,
    pages: pages,
    next: next,
    prev: prev,
  );

  factory InfoModel.fromJson(Map<dynamic, dynamic> parsedJson) {
    return InfoModel(
        count: parsedJson['count'],
        pages: parsedJson['pages'],
        next: parsedJson['next'].toString(),
        prev: parsedJson['prev'].toString()
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['pages'] = pages;
    data['next'] = next;
    data['prev'] = prev;
    return data;
  }
}