// To parse this JSON data, do
//
//     final peopleResponse = peopleResponseFromJson(jsonString);

class CharacterCharacters {
    final String aliases;
    final String apiDetailUrl;
    final dynamic birth;
    final int countOfIssueAppearances;
    final DateTime dateAdded;
    final DateTime dateLastUpdated;
    final String deck;
    final String description;
    final FirstAppearedInIssueCharacters firstAppearedInIssue;
    final int gender;
    final int id;
    final ImageCharacters image;
    final String name;
    final FirstAppearedInIssueCharacters origin;
    final FirstAppearedInIssueCharacters publisher;
    final String realName;
    final String siteDetailUrl;

    CharacterCharacters({
        required this.aliases,
        required this.apiDetailUrl,
        required this.birth,
        required this.countOfIssueAppearances,
        required this.dateAdded,
        required this.dateLastUpdated,
        required this.deck,
        required this.description,
        required this.firstAppearedInIssue,
        required this.gender,
        required this.id,
        required this.image,
        required this.name,
        required this.origin,
        required this.publisher,
        required this.realName,
        required this.siteDetailUrl,
    });

    factory CharacterCharacters.fromJson(Map<String, dynamic> json) => CharacterCharacters(
        aliases: json["aliases"],
        apiDetailUrl: json["api_detail_url"],
        birth: json["birth"],
        countOfIssueAppearances: json["count_of_issue_appearances"],
        dateAdded: DateTime.parse(json["date_added"]),
        dateLastUpdated: DateTime.parse(json["date_last_updated"]),
        deck: json["deck"],
        description: json["description"],
        firstAppearedInIssue: FirstAppearedInIssueCharacters.fromJson(json["first_appeared_in_issue"]),
        gender: json["gender"],
        id: json["id"],
        image: ImageCharacters.fromJson(json["image"]),
        name: json["name"],
        origin: FirstAppearedInIssueCharacters.fromJson(json["origin"]),
        publisher: FirstAppearedInIssueCharacters.fromJson(json["publisher"]),
        realName: json["real_name"],
        siteDetailUrl: json["site_detail_url"],
    );

    Map<String, dynamic> toJson() => {
        "aliases": aliases,
        "api_detail_url": apiDetailUrl,
        "birth": birth,
        "count_of_issue_appearances": countOfIssueAppearances,
        "date_added": dateAdded.toIso8601String(),
        "date_last_updated": dateLastUpdated.toIso8601String(),
        "deck": deck,
        "description": description,
        "first_appeared_in_issue": firstAppearedInIssue.toJson(),
        "gender": gender,
        "id": id,
        "image": image.toJson(),
        "name": name,
        "origin": origin.toJson(),
        "publisher": publisher.toJson(),
        "real_name": realName,
        "site_detail_url": siteDetailUrl,
    };
}

class FirstAppearedInIssueCharacters {
    final String apiDetailUrl;
    final int id;
    final String name;

    FirstAppearedInIssueCharacters({
        required this.apiDetailUrl,
        required this.id,
        required this.name
    });

    factory FirstAppearedInIssueCharacters.fromJson(Map<String, dynamic> json) => FirstAppearedInIssueCharacters(
        apiDetailUrl: json["api_detail_url"],
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "api_detail_url": apiDetailUrl,
        "id": id,
        "name": name,
    };
}

class ImageCharacters {
    final String iconUrl;
    final String mediumUrl;
    final String screenUrl;
    final String screenLargeUrl;
    final String smallUrl;
    final String superUrl;
    final String thumbUrl;
    final String tinyUrl;
    final String originalUrl;
    final String imageTags;

    ImageCharacters({
        required this.iconUrl,
        required this.mediumUrl,
        required this.screenUrl,
        required this.screenLargeUrl,
        required this.smallUrl,
        required this.superUrl,
        required this.thumbUrl,
        required this.tinyUrl,
        required this.originalUrl,
        required this.imageTags,
    });

    factory ImageCharacters.fromJson(Map<String, dynamic> json) => ImageCharacters(
        iconUrl: json["icon_url"],
        mediumUrl: json["medium_url"],
        screenUrl: json["screen_url"],
        screenLargeUrl: json["screen_large_url"],
        smallUrl: json["small_url"],
        superUrl: json["super_url"],
        thumbUrl: json["thumb_url"],
        tinyUrl: json["tiny_url"],
        originalUrl: json["original_url"],
        imageTags: json["image_tags"],
    );

    Map<String, dynamic> toJson() => {
        "icon_url": iconUrl,
        "medium_url": mediumUrl,
        "screen_url": screenUrl,
        "screen_large_url": screenLargeUrl,
        "small_url": smallUrl,
        "super_url": superUrl,
        "thumb_url": thumbUrl,
        "tiny_url": tinyUrl,
        "original_url": originalUrl,
        "image_tags": imageTags,
    };
}
