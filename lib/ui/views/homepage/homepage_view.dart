import 'package:flutter/material.dart';
import 'package:mimories/ui/views/homepage/homepage_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) => viewModel.fetchUserList(),
      viewModelBuilder: () => HomepageViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.yellow,
        body:model.status == STATUS.success ?   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: model.users.map((user)=> Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('${user.name} from ${user.address?.city}'),
          ),).toList(),): const Text('wait for it ...'),

      ),
    );
  }
}