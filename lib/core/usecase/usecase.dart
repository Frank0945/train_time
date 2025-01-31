abstract class UseCase<T, Params> {
  Future<T> call({required Params params});
}

class NoParams {
  const NoParams();
}

class Result<T> {
  final T? data;
  final String? error;

  Result._({this.data, this.error});

  factory Result.success(T data) => Result._(data: data);
  factory Result.failure(String error) => Result._(error: error);

  bool get isSuccess => data != null;
  bool get isFailure => error != null;
}
