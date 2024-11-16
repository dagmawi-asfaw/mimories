import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mimories/constants/routes_constant.dart';
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
        body: model.status == STATUS.success
            ? Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: model.users
                        .map(
                          (user) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child:
                                Text('${user.name} from ${user.address?.city}'),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      //navigate to the form page
                      context.go('/normalForm');
                    },
                    child: const Text(
                      'go to the next page',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            : const Text('wait for it ...'),
      ),
    );
  }
}
