// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:mimories/ui/views/miform/miform_view.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String EnterPersonNameValueKey = 'enter person name';

final Map<String, TextEditingController> _MiformViewTextEditingControllers = {};

final Map<String, FocusNode> _MiformViewFocusNodes = {};

final Map<String, String? Function(String?)?> _MiformViewTextValidations = {
  EnterPersonNameValueKey: validate,
};

mixin $MiformView {
  TextEditingController get enterPersonNameController =>
      _getFormTextEditingController(EnterPersonNameValueKey);

  FocusNode get enterPersonNameFocusNode =>
      _getFormFocusNode(EnterPersonNameValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_MiformViewTextEditingControllers.containsKey(key)) {
      return _MiformViewTextEditingControllers[key]!;
    }

    _MiformViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _MiformViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_MiformViewFocusNodes.containsKey(key)) {
      return _MiformViewFocusNodes[key]!;
    }
    _MiformViewFocusNodes[key] = FocusNode();
    return _MiformViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    enterPersonNameController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    enterPersonNameController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          EnterPersonNameValueKey: enterPersonNameController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _MiformViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _MiformViewFocusNodes.values) {
      focusNode.dispose();
    }

    _MiformViewTextEditingControllers.clear();
    _MiformViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get enterPersonNameValue =>
      this.formValueMap[EnterPersonNameValueKey] as String?;

  set enterPersonNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EnterPersonNameValueKey: value}),
    );

    if (_MiformViewTextEditingControllers.containsKey(
        EnterPersonNameValueKey)) {
      _MiformViewTextEditingControllers[EnterPersonNameValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasEnterPersonName =>
      this.formValueMap.containsKey(EnterPersonNameValueKey) &&
      (enterPersonNameValue?.isNotEmpty ?? false);

  bool get hasEnterPersonNameValidationMessage =>
      this.fieldsValidationMessages[EnterPersonNameValueKey]?.isNotEmpty ??
      false;

  String? get enterPersonNameValidationMessage =>
      this.fieldsValidationMessages[EnterPersonNameValueKey];
}

extension Methods on FormStateHelper {
  setEnterPersonNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EnterPersonNameValueKey] =
          validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    enterPersonNameValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      EnterPersonNameValueKey: getValidationMessage(EnterPersonNameValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _MiformViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _MiformViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      EnterPersonNameValueKey: getValidationMessage(EnterPersonNameValueKey),
    });
