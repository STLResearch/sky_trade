import 'package:sky_ways/core/resources/strings/local.dart'
    show jsonFileEnding, txtFileEnding;

enum FileType {
  json(
    jsonFileEnding,
  ),
  jsonList(
    jsonFileEnding,
  ),
  txt(
    txtFileEnding,
  );

  const FileType(
    this.ending,
  );

  final String ending;
}
