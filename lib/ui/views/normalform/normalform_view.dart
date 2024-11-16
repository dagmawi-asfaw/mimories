import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'normalform_viewmodel.dart';

class NormalformView extends StackedView<NormalFormViewModel> {
  const NormalformView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NormalFormViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            TextField(
              controller: viewModel.nameController,
              onChanged: (value) => viewModel.onNameChanged,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: viewModel.onSubmit,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  NormalFormViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NormalFormViewModel();
}
