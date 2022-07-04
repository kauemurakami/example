class HeadersAPI {
  final apiKey;

  HeadersAPI({this.apiKey});
  Map<String, String> getHeaders() {
    print({
      "Content-Type": "application/json",
      "Accept-Charset": "UTF-8",
      "x-api-key": apiKey
    });

    return {
      "Content-Type": "application/json",
      "Accept-Charset": "UTF-8",
      "x-api-key": apiKey
    };
  }
}
