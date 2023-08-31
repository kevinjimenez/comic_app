class Character {
  final int id;
  final String name;
  final String aliases;
  final Image image;
  final int gender;
  final String realName;
  final FirstAppearedInIssue origin;
  // final String apiDetailUrl;
  // final String birth;
  // final int countOfIssueAppearances;
  // final DateTime dateAdded;
  // final DateTime dateLastUpdated;
  // final String deck;
  // final String description;
  // final FirstAppearedInIssue firstAppearedInIssue;
  final FirstAppearedInIssue publisher;
  // final String siteDetailUrl;

  Character({
    required this.id,
    required this.name,
    required this.aliases,
    required this.image,
    required this.gender,
    required this.realName,
    required this.origin,
    // required this.apiDetailUrl,
    // required this.birth,
    // required this.countOfIssueAppearances,
    // required this.dateAdded,
    // required this.dateLastUpdated,
    // required this.deck,
    // required this.description,
    // required this.firstAppearedInIssue,
    required this.publisher,
    // required this.siteDetailUrl,
  });
}

class FirstAppearedInIssue {
  final String apiDetailUrl;
  final int id;
  final String name;

  FirstAppearedInIssue({
    required this.apiDetailUrl,
    required this.id,
    required this.name,
  });
}

class Image {
  // final String iconUrl;
  // final String mediumUrl;
  // final String screenUrl;
  // final String screenLargeUrl;
  // final String smallUrl;
  // final String superUrl;
  // final String thumbUrl;
  // final String tinyUrl;
  final String originalUrl;
  // final String imageTags;

  Image({
    // required this.iconUrl,
    // required this.mediumUrl,
    // required this.screenUrl,
    // required this.screenLargeUrl,
    // required this.smallUrl,
    // required this.superUrl,
    // required this.thumbUrl,
    // required this.tinyUrl,
    required this.originalUrl,
    // required this.imageTags,
  });
}
