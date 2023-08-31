// To parse this JSON data, do
//
//     final peopleResponse = peopleResponseFromJson(jsonString);

import 'package:comic/infrastructure/infrastructure.dart';

class CharactersResponse {
    final String error;
    final int limit;
    final int offset;
    final int numberOfPageResults;
    final int numberOfTotalResults;
    final int statusCode;
    final List<CharacterCharacters> results;
    final String version;

    CharactersResponse({
        required this.error,
        required this.limit,
        required this.offset,
        required this.numberOfPageResults,
        required this.numberOfTotalResults,
        required this.statusCode,
        required this.results,
        required this.version,
    });

    factory CharactersResponse.fromJson(Map<String, dynamic> json) => CharactersResponse(
        error: json["error"],
        limit: json["limit"],
        offset: json["offset"],
        numberOfPageResults: json["number_of_page_results"],
        numberOfTotalResults: json["number_of_total_results"],
        statusCode: json["status_code"],
        results: List<CharacterCharacters>.from(json["results"].map((x) => CharacterCharacters.fromJson(x))),
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "error": error,
        "limit": limit,
        "offset": offset,
        "number_of_page_results": numberOfPageResults,
        "number_of_total_results": numberOfTotalResults,
        "status_code": statusCode,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "version": version,
    };
}