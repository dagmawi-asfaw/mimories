import 'package:flutter/material.dart';
import 'package:mimories/ui/views/homepage/homepage_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    // rebuildUi();
    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) => viewModel.fetchUserList(),
      viewModelBuilder: () => HomepageViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Text(model.title),
        ),
      ),
    );
  }
}
