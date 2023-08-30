import 'package:comic/domian/domian.dart';

class CharacterMapper {
  static Character jsonToEntity(Map<String, dynamic> json) => Character(
        id: json['id'],
        name: json['name'],
      );
}
