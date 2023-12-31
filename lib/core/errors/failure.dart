// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:jobseque/core/strings/failures.dart';

abstract class Failure {
  String errorMessage;
  Failure({
    required this.errorMessage,
  });
}

class GeneralFailure extends Failure {
  GeneralFailure({required super.errorMessage});
}

class FilterSearchInvalidInputFailure extends Failure {
  FilterSearchInvalidInputFailure()
      : super(errorMessage: FILTERED_SEARCH_FAILURE_MESSAGE);
}

class NoJobsYetFailure extends Failure {
  NoJobsYetFailure() : super(errorMessage: NO_JOBS_POSTED_YET_FAILURE_MESSAGE);
}

class NoFavoriteJobsFailure extends Failure {
  NoFavoriteJobsFailure()
      : super(errorMessage: NO_FAVORITE_JOBS_FAILURE_MESSAGE);
}

class NoActiveJobsFailure extends Failure {
  NoActiveJobsFailure() : super(errorMessage: NO_ACTIVE_JOBS_FAILURE_MESSAGE);
}

class SearchNotFoundlFailure extends Failure {
  SearchNotFoundlFailure()
      : super(errorMessage: SEARCH_NOT_FOUND_FAILURE_MESSAGE);
}

class NoSubmittedJobsFailure extends Failure {
  NoSubmittedJobsFailure()
      : super(errorMessage: NO_SUBMITTED_JOBS_FAILURE_MESSAGE);
}

class FilteredSearchNotFoundlFailure extends Failure {
  FilteredSearchNotFoundlFailure()
      : super(errorMessage: FILTERED_SEARCH_FAILURE_MESSAGE);
}

class UserNotFoundFailure extends Failure {
  UserNotFoundFailure() : super(errorMessage: USER_NOT_FOUND_FAILURE_MESSAGE);
}

class OfflineFailure extends Failure {
  OfflineFailure() : super(errorMessage: OFFLINE_FAILURE_MESSAGE);
}

class InvalidDataFailure extends Failure {
  InvalidDataFailure() : super(errorMessage: INVALID_DATA_FAILURE_MESSAGE);
}

class NotFoundFailure extends Failure {
  NotFoundFailure() : super(errorMessage: NOT_FOUND_FAILURE_MESSAGE);
}

class PlatformFailure extends Failure {
  PlatformFailure() : super(errorMessage: PLATFORM_FAILURE_MESSAGE);
}

class NoProfileImageYetFailure extends Failure {
  NoProfileImageYetFailure() : super(errorMessage: NO_PROFILE_IMAGE_FAILURE);
}

class NoProfileExistFailure extends Failure {
  NoProfileExistFailure() : super(errorMessage: NO_PROFILE_Exist_FAILURE);
}

class NoPortfoliosYetFailure extends Failure {
  NoPortfoliosYetFailure() : super(errorMessage: NO_PORTFOLIOS_YET_FAILURE);
}

class CanceledFailure extends Failure {
  CanceledFailure() : super(errorMessage: CANCELED_BY_USER_FAILURE_MESSAGE);
}

class ServerFailure extends Failure {
  ServerFailure({
    required super.errorMessage,
  });

  factory ServerFailure.fromDio(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: 'Connection timeout with api server');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'badCertificate with api server');

      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errorMessage: 'Opps There was an Error, Please try again');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your request was not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'There is a problem with server, please try later');
    } else if (statusCode == 413) {
      return ServerFailure(
        errorMessage: 'Max size is 300 KB, the file is too large!',
      );
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        errorMessage: response['massege']?['email']?[0] ??
            response['massage'] ??
            response.toString(),
      );
    } else {
      return ServerFailure(
        errorMessage: 'There was an error , please try again',
      );
    }
  }
}
