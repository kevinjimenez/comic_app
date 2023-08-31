import 'package:comic/domian/domian.dart';
import 'package:comic/infrastructure/infrastructure.dart';

class CharacterMapper {
  static Character jsonToEntity(CharacterCharacters character) => Character(
        aliases: character.aliases,
        // apiDetailUrl: character.apiDetailUrl,
        // birth: character.birth,
        // countOfIssueAppearances: character.countOfIssueAppearances,
        // dateAdded: character.dateAdded,
        // dateLastUpdated: character.dateLastUpdated,
        // deck: character.deck,
        // description: character.description,
        // firstAppearedInIssue: FirstAppearedInIssue(
        //     id: character.firstAppearedInIssue.id,
        //     apiDetailUrl: character.firstAppearedInIssue.apiDetailUrl,
        //     name: character.firstAppearedInIssue.name),
        gender: character.gender,
        id: character.id,
        image: Image(
          // iconUrl: character.image.iconUrl,
          // mediumUrl: character.image.mediumUrl,
          // screenUrl: character.image.screenUrl,
          // screenLargeUrl: character.image.screenLargeUrl,
          // smallUrl: character.image.smallUrl,
          // superUrl: character.image.superUrl,
          // thumbUrl: character.image.thumbUrl,
          // tinyUrl: character.image.tinyUrl,
          originalUrl: character.image.originalUrl,
          // imageTags: character.image.imageTags,
        ),
        name: character.name,
        origin: FirstAppearedInIssue(
            id: character.origin.id,
            apiDetailUrl: character.origin.apiDetailUrl,
            name: character.origin.name),
        publisher: FirstAppearedInIssue(
            id: character.publisher.id,
            apiDetailUrl: character.publisher.apiDetailUrl,
            name: character.publisher.name),
        realName: character.realName,
        // siteDetailUrl: character.siteDetailUrl,
      );
}
