class HomePageViewModel {
  // create singleton
  static HomePageViewModel? _instance;

  static HomePageViewModel get instance {
    _instance ??= HomePageViewModel();
    return _instance!;
  }
}
