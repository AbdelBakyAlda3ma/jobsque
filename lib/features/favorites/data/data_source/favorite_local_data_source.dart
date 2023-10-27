import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

abstract class FavoriteLocalDataSource {
  Future<void> addFavorite({required JobEntity job});
  Future<void> deleteFacvorite({required JobEntity job});
  List<JobEntity> getFavoriteJobs();
}

class FavoriteLocalDataSourceImpl extends FavoriteLocalDataSource {
  @override
  Future<void> addFavorite({required JobEntity job}) async {
    var box = Hive.box<JobEntity>(kFavoriteJoBsBox);

    await box.put(job.id, job);
    print(box.values.toList().toString());
    log(box.values.toList().length.toString());
  }

  @override
  Future<void> deleteFacvorite({required JobEntity job}) async {
    var box = Hive.box<JobEntity>(kFavoriteJoBsBox);
    await box.delete(job.id);
    box.clear();

    print(box.values.toList().toString());
    log(box.values.toList().toString());
    log(box.values.toList().length.toString());
  }

  @override
  List<JobEntity> getFavoriteJobs() {
    var box = Hive.box<JobEntity>(kFavoriteJoBsBox);
    var listOfFavoriteJobs = box.values.toList();
    if (listOfFavoriteJobs.isNotEmpty) {
      return listOfFavoriteJobs;
    } else {
      throw NoFavoriteJobsException();
    }
  }
}
