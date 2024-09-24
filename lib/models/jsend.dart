

enum JsendStatus { success, fail, error }

class Jsend<T> {
  final JsendStatus status;
  final String? message;
  final T? data;

  Jsend({
    required this.status,
    this.message,
    this.data,
  });

  factory Jsend.success({T? data, String? message}) {
    return Jsend(
      status: JsendStatus.success,
      data: data,
      message: message,
    );
  }

  factory Jsend.fail(String message) {
    return Jsend(
      status: JsendStatus.fail,
      message: message,
    );
  }

  factory Jsend.error(String message) {
    return Jsend(
      status: JsendStatus.error,
      message: message,
    );
  }

}