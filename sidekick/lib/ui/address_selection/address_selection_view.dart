import 'package:flutter/material.dart';
import 'package:sidekick/ui/address_selection/address_selection_view.form.dart';
import 'package:sidekick/ui/address_selection/address_selection_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(
    name: 'address',
  )
])
class AddressSelectionView extends StatelessWidget with $AddressSelectionView {
  const AddressSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddressSelectionViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        body: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: 'Enter your address'),
              controller: addressController,
            ),
            if (!model.hasAutoCompleteResults)
              const Text('We have no suggestions for you'),
            if (model.hasAutoCompleteResults)
              ...model.autoCompleteResults.map((autoCompletResult) => ListTile(
                    title: Text(autoCompletResult.mainText ?? ''),
                    subtitle: Text(autoCompletResult.secondaryText ?? ''),
                  ))
          ],
        ),
      ),
      viewModelBuilder: () => AddressSelectionViewModel(),
    );
  }
}
