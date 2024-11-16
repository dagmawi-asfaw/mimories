import 'package:flutter/material.dart';
import 'package:mimories/ui/views/miform/miform_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'miform_viewmodel.dart';

//form validator function
String? validate(value) {
  return '';
}

textEditingController() {}

@FormView(
  fields: [
    FormTextField(
      name: 'enter person name',
      validator: validate,
      //   customTextEditingController: textEditingController,
    )
  ],
)
class MiformView extends StackedView<MiformViewModel> with $MiformView {
  MiformView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MiformViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: TextField(
          controller: enterPersonNameController,
          onChanged: (value) {},
        ),
      ),
    );
  }

  @override
  MiformViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MiformViewModel();

  @override
  void onViewModelReady(MiformViewModel viewModel) {
    syncFormWithViewModel(viewModel as FormStateHelper);
  }
}
