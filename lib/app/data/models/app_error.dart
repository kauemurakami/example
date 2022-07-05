class AppError {
  String? message;
  int? status;

  AppError({this.message, this.status});

  factory AppError.fromJson(Map<String, dynamic> json) => AppError(
        message: json["erro"].map((x) => x),
      );
}
