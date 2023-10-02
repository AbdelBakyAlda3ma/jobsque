import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/country_list.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_location_screen_body_wrap_item.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class WorkLocationScreenBodyCountryJob extends StatefulWidget {
  const WorkLocationScreenBodyCountryJob({
    super.key,
  });

  @override
  State<WorkLocationScreenBodyCountryJob> createState() =>
      _WorkLocationScreenBodyCountryJobState();
}

class _WorkLocationScreenBodyCountryJobState
    extends State<WorkLocationScreenBodyCountryJob> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            'Select the country you want for your job',
            style: CustomTextStyles.textLRegular
                .copyWith(color: AppColors.neutral[500]),
          ),
          const VerticalSpace(space: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 12,
                runSpacing: 16,
                children: countries
                    .map(
                      (country) => WorkLocationScreenBodyWrapItem(
                        isoCode: country.code,
                        countryName: country.name,
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
