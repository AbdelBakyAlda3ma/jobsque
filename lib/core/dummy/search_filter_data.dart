class FilteredSearchItemModel {
  String filteredTopic;
  bool isSelected;
  FilteredSearchItemModel({
    required this.filteredTopic,
    required this.isSelected,
  });
}

List<FilteredSearchItemModel> searchFilterData = [
  FilteredSearchItemModel(filteredTopic: 'Remote', isSelected: true),
  FilteredSearchItemModel(filteredTopic: 'Full Time', isSelected: true),
  FilteredSearchItemModel(filteredTopic: 'Post date', isSelected: false),
  FilteredSearchItemModel(filteredTopic: 'Contract', isSelected: false),
  FilteredSearchItemModel(filteredTopic: 'Internship', isSelected: false),
];
