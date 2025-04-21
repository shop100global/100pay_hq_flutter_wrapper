import 'package:flutter/foundation.dart';

class ParseUseCase<T> {
  Future<T> execute(dynamic response, T Function(dynamic) parser) async {
    return compute(_parse, _ParseArgs<T>(response, parser));
  }

  static T _parse<T>(_ParseArgs<T> args) {
    final parsedData = args.parser(args.response);

    // Logging inside isolate (won't be visible in console)
    debugPrint("Parsed data: $parsedData");

    return parsedData;
  }
}

class _ParseArgs<T> {
  final dynamic response;
  final T Function(dynamic) parser;

  _ParseArgs(this.response, this.parser);
}
