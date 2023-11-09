import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_list_view_item.dart';

class HomeSuggestdJobCarouselSlider extends StatefulWidget {
  final List<JobEntity> suggestedJobs;

  const HomeSuggestdJobCarouselSlider({super.key, required this.suggestedJobs});

  @override
  State<HomeSuggestdJobCarouselSlider> createState() =>
      _HomeSuggestdJobCarouselSliderState();
}

class _HomeSuggestdJobCarouselSliderState
    extends State<HomeSuggestdJobCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: widget.suggestedJobs.length,
      itemBuilder: (context, index, realIndex) =>
          HomeSuggestedJobSectionListViewItem(
        job: widget.suggestedJobs[index],
      ),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        initialPage: 0,
        enlargeFactor: 0.3,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        scrollPhysics: const BouncingScrollPhysics(),
        viewportFraction: 0.8,
      ),
    );
  }
}
