// ignore_for_file: missing_required_param

import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/jobs/data/models/job_model.dart';
import '../../domain/entities/job_entity.dart';

abstract class JobRemoteDataSource {
  Future<List<JobEntity>> getAllJobs();
  Future<List<JobEntity>> searchJobs({
    required String jobName,
  });
  Future<List<JobEntity>> filterJobs({
    String? jobName,
    String? jobLocation,
    String? jobSalary,
  });
}

class JobRemoteDataSourceImpl extends JobRemoteDataSource {
  JobRemoteDataSourceImpl({
    required this.apiService,
  });
  ApiService apiService;

  @override
  Future<List<JobModel>> getAllJobs() async {
    Map<String, dynamic> jobsData = await apiService.get(path: '/jobs');
    var jobsListData = jobsData['data'] as List<dynamic>;
    if (jobsListData.isNotEmpty) {
      final List<JobModel> jobsList = [];
      for (var job in jobsListData) {
        jobsList.add(JobModel.fromMap(job));
      }
      return jobsList;
    } else {
      throw NoJobsYetException();
    }
  }

  @override
  Future<List<JobEntity>> filterJobs({
    String? jobName,
    String? jobLocation,
    String? jobSalary,
  }) async {
    Map<String, dynamic> jobsData = await apiService.post(
      path: '/jobs/filter',
      body: {
        'name': jobName,
        'location': jobLocation,
        'salary': jobSalary,
      },
    );
    var filteredJobsData = jobsData['data'] as List<dynamic>;

    if (jobName != null || jobLocation != null || jobSalary != null) {
      if (filteredJobsData.isNotEmpty) {
        final List<JobModel> filteredJobsList = [];
        for (var filteredJob in filteredJobsData) {
          filteredJobsList.add(JobModel.fromMap(filteredJob));
        }
        return filteredJobsList;
      } else {
        throw FilteredSearchNotFoundException();
      }
    } else {
      throw FilterSearchInvalidInputException();
    }
  }

  @override
  Future<List<JobEntity>> searchJobs({
    required String jobName,
  }) async {
    Map<String, dynamic> jobsData = await apiService.post(
      path: '/jobs/search',
      body: {
        'name': jobName,
      },
    );
    var searchedJobsData = jobsData['data'] as List<dynamic>;

    if (searchedJobsData.isNotEmpty) {
      final List<JobModel> searchedJobsList = [];
      for (var searchedJob in searchedJobsData) {
        searchedJobsList.add(JobModel.fromMap(searchedJob));
      }
      return searchedJobsList;
    } else {
      throw SearchNotFoundException();
    }
  }
}
