// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expense_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddExpensePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addExpense,
    required TResult Function() getAllCategories,
    required TResult Function(String amount) updateAmount,
    required TResult Function(String category) updateCategory,
    required TResult Function(String description) updateDescription,
    required TResult Function() validateExpenseFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addExpense,
    TResult? Function()? getAllCategories,
    TResult? Function(String amount)? updateAmount,
    TResult? Function(String category)? updateCategory,
    TResult? Function(String description)? updateDescription,
    TResult? Function()? validateExpenseFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addExpense,
    TResult Function()? getAllCategories,
    TResult Function(String amount)? updateAmount,
    TResult Function(String category)? updateCategory,
    TResult Function(String description)? updateDescription,
    TResult Function()? validateExpenseFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveExpenseEvent value) addExpense,
    required TResult Function(GetAllCategories value) getAllCategories,
    required TResult Function(UpdateAmount value) updateAmount,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(UpdateDescription value) updateDescription,
    required TResult Function(ValidateExpenseFields value)
        validateExpenseFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveExpenseEvent value)? addExpense,
    TResult? Function(GetAllCategories value)? getAllCategories,
    TResult? Function(UpdateAmount value)? updateAmount,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(UpdateDescription value)? updateDescription,
    TResult? Function(ValidateExpenseFields value)? validateExpenseFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveExpenseEvent value)? addExpense,
    TResult Function(GetAllCategories value)? getAllCategories,
    TResult Function(UpdateAmount value)? updateAmount,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(UpdateDescription value)? updateDescription,
    TResult Function(ValidateExpenseFields value)? validateExpenseFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$SaveExpenseEventImpl implements SaveExpenseEvent {
  const _$SaveExpenseEventImpl();

  @override
  String toString() {
    return 'AddExpensePageEvent.addExpense()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveExpenseEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addExpense,
    required TResult Function() getAllCategories,
    required TResult Function(String amount) updateAmount,
    required TResult Function(String category) updateCategory,
    required TResult Function(String description) updateDescription,
    required TResult Function() validateExpenseFields,
  }) {
    return addExpense();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addExpense,
    TResult? Function()? getAllCategories,
    TResult? Function(String amount)? updateAmount,
    TResult? Function(String category)? updateCategory,
    TResult? Function(String description)? updateDescription,
    TResult? Function()? validateExpenseFields,
  }) {
    return addExpense?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addExpense,
    TResult Function()? getAllCategories,
    TResult Function(String amount)? updateAmount,
    TResult Function(String category)? updateCategory,
    TResult Function(String description)? updateDescription,
    TResult Function()? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveExpenseEvent value) addExpense,
    required TResult Function(GetAllCategories value) getAllCategories,
    required TResult Function(UpdateAmount value) updateAmount,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(UpdateDescription value) updateDescription,
    required TResult Function(ValidateExpenseFields value)
        validateExpenseFields,
  }) {
    return addExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveExpenseEvent value)? addExpense,
    TResult? Function(GetAllCategories value)? getAllCategories,
    TResult? Function(UpdateAmount value)? updateAmount,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(UpdateDescription value)? updateDescription,
    TResult? Function(ValidateExpenseFields value)? validateExpenseFields,
  }) {
    return addExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveExpenseEvent value)? addExpense,
    TResult Function(GetAllCategories value)? getAllCategories,
    TResult Function(UpdateAmount value)? updateAmount,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(UpdateDescription value)? updateDescription,
    TResult Function(ValidateExpenseFields value)? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(this);
    }
    return orElse();
  }
}

abstract class SaveExpenseEvent implements AddExpensePageEvent {
  const factory SaveExpenseEvent() = _$SaveExpenseEventImpl;
}

/// @nodoc

class _$GetAllCategoriesImpl implements GetAllCategories {
  const _$GetAllCategoriesImpl();

  @override
  String toString() {
    return 'AddExpensePageEvent.getAllCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addExpense,
    required TResult Function() getAllCategories,
    required TResult Function(String amount) updateAmount,
    required TResult Function(String category) updateCategory,
    required TResult Function(String description) updateDescription,
    required TResult Function() validateExpenseFields,
  }) {
    return getAllCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addExpense,
    TResult? Function()? getAllCategories,
    TResult? Function(String amount)? updateAmount,
    TResult? Function(String category)? updateCategory,
    TResult? Function(String description)? updateDescription,
    TResult? Function()? validateExpenseFields,
  }) {
    return getAllCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addExpense,
    TResult Function()? getAllCategories,
    TResult Function(String amount)? updateAmount,
    TResult Function(String category)? updateCategory,
    TResult Function(String description)? updateDescription,
    TResult Function()? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveExpenseEvent value) addExpense,
    required TResult Function(GetAllCategories value) getAllCategories,
    required TResult Function(UpdateAmount value) updateAmount,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(UpdateDescription value) updateDescription,
    required TResult Function(ValidateExpenseFields value)
        validateExpenseFields,
  }) {
    return getAllCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveExpenseEvent value)? addExpense,
    TResult? Function(GetAllCategories value)? getAllCategories,
    TResult? Function(UpdateAmount value)? updateAmount,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(UpdateDescription value)? updateDescription,
    TResult? Function(ValidateExpenseFields value)? validateExpenseFields,
  }) {
    return getAllCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveExpenseEvent value)? addExpense,
    TResult Function(GetAllCategories value)? getAllCategories,
    TResult Function(UpdateAmount value)? updateAmount,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(UpdateDescription value)? updateDescription,
    TResult Function(ValidateExpenseFields value)? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories(this);
    }
    return orElse();
  }
}

abstract class GetAllCategories implements AddExpensePageEvent {
  const factory GetAllCategories() = _$GetAllCategoriesImpl;
}

/// @nodoc

class _$UpdateAmountImpl implements UpdateAmount {
  const _$UpdateAmountImpl(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'AddExpensePageEvent.updateAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addExpense,
    required TResult Function() getAllCategories,
    required TResult Function(String amount) updateAmount,
    required TResult Function(String category) updateCategory,
    required TResult Function(String description) updateDescription,
    required TResult Function() validateExpenseFields,
  }) {
    return updateAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addExpense,
    TResult? Function()? getAllCategories,
    TResult? Function(String amount)? updateAmount,
    TResult? Function(String category)? updateCategory,
    TResult? Function(String description)? updateDescription,
    TResult? Function()? validateExpenseFields,
  }) {
    return updateAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addExpense,
    TResult Function()? getAllCategories,
    TResult Function(String amount)? updateAmount,
    TResult Function(String category)? updateCategory,
    TResult Function(String description)? updateDescription,
    TResult Function()? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (updateAmount != null) {
      return updateAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveExpenseEvent value) addExpense,
    required TResult Function(GetAllCategories value) getAllCategories,
    required TResult Function(UpdateAmount value) updateAmount,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(UpdateDescription value) updateDescription,
    required TResult Function(ValidateExpenseFields value)
        validateExpenseFields,
  }) {
    return updateAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveExpenseEvent value)? addExpense,
    TResult? Function(GetAllCategories value)? getAllCategories,
    TResult? Function(UpdateAmount value)? updateAmount,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(UpdateDescription value)? updateDescription,
    TResult? Function(ValidateExpenseFields value)? validateExpenseFields,
  }) {
    return updateAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveExpenseEvent value)? addExpense,
    TResult Function(GetAllCategories value)? getAllCategories,
    TResult Function(UpdateAmount value)? updateAmount,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(UpdateDescription value)? updateDescription,
    TResult Function(ValidateExpenseFields value)? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (updateAmount != null) {
      return updateAmount(this);
    }
    return orElse();
  }
}

abstract class UpdateAmount implements AddExpensePageEvent {
  const factory UpdateAmount(final String amount) = _$UpdateAmountImpl;

  String get amount;
}

/// @nodoc

class _$UpdateCategoryImpl implements UpdateCategory {
  const _$UpdateCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'AddExpensePageEvent.updateCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addExpense,
    required TResult Function() getAllCategories,
    required TResult Function(String amount) updateAmount,
    required TResult Function(String category) updateCategory,
    required TResult Function(String description) updateDescription,
    required TResult Function() validateExpenseFields,
  }) {
    return updateCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addExpense,
    TResult? Function()? getAllCategories,
    TResult? Function(String amount)? updateAmount,
    TResult? Function(String category)? updateCategory,
    TResult? Function(String description)? updateDescription,
    TResult? Function()? validateExpenseFields,
  }) {
    return updateCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addExpense,
    TResult Function()? getAllCategories,
    TResult Function(String amount)? updateAmount,
    TResult Function(String category)? updateCategory,
    TResult Function(String description)? updateDescription,
    TResult Function()? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveExpenseEvent value) addExpense,
    required TResult Function(GetAllCategories value) getAllCategories,
    required TResult Function(UpdateAmount value) updateAmount,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(UpdateDescription value) updateDescription,
    required TResult Function(ValidateExpenseFields value)
        validateExpenseFields,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveExpenseEvent value)? addExpense,
    TResult? Function(GetAllCategories value)? getAllCategories,
    TResult? Function(UpdateAmount value)? updateAmount,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(UpdateDescription value)? updateDescription,
    TResult? Function(ValidateExpenseFields value)? validateExpenseFields,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveExpenseEvent value)? addExpense,
    TResult Function(GetAllCategories value)? getAllCategories,
    TResult Function(UpdateAmount value)? updateAmount,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(UpdateDescription value)? updateDescription,
    TResult Function(ValidateExpenseFields value)? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class UpdateCategory implements AddExpensePageEvent {
  const factory UpdateCategory(final String category) = _$UpdateCategoryImpl;

  String get category;
}

/// @nodoc

class _$UpdateDescriptionImpl implements UpdateDescription {
  const _$UpdateDescriptionImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'AddExpensePageEvent.updateDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addExpense,
    required TResult Function() getAllCategories,
    required TResult Function(String amount) updateAmount,
    required TResult Function(String category) updateCategory,
    required TResult Function(String description) updateDescription,
    required TResult Function() validateExpenseFields,
  }) {
    return updateDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addExpense,
    TResult? Function()? getAllCategories,
    TResult? Function(String amount)? updateAmount,
    TResult? Function(String category)? updateCategory,
    TResult? Function(String description)? updateDescription,
    TResult? Function()? validateExpenseFields,
  }) {
    return updateDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addExpense,
    TResult Function()? getAllCategories,
    TResult Function(String amount)? updateAmount,
    TResult Function(String category)? updateCategory,
    TResult Function(String description)? updateDescription,
    TResult Function()? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveExpenseEvent value) addExpense,
    required TResult Function(GetAllCategories value) getAllCategories,
    required TResult Function(UpdateAmount value) updateAmount,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(UpdateDescription value) updateDescription,
    required TResult Function(ValidateExpenseFields value)
        validateExpenseFields,
  }) {
    return updateDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveExpenseEvent value)? addExpense,
    TResult? Function(GetAllCategories value)? getAllCategories,
    TResult? Function(UpdateAmount value)? updateAmount,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(UpdateDescription value)? updateDescription,
    TResult? Function(ValidateExpenseFields value)? validateExpenseFields,
  }) {
    return updateDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveExpenseEvent value)? addExpense,
    TResult Function(GetAllCategories value)? getAllCategories,
    TResult Function(UpdateAmount value)? updateAmount,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(UpdateDescription value)? updateDescription,
    TResult Function(ValidateExpenseFields value)? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(this);
    }
    return orElse();
  }
}

abstract class UpdateDescription implements AddExpensePageEvent {
  const factory UpdateDescription(final String description) =
      _$UpdateDescriptionImpl;

  String get description;
}

/// @nodoc

class _$ValidateExpenseFieldsImpl implements ValidateExpenseFields {
  const _$ValidateExpenseFieldsImpl();

  @override
  String toString() {
    return 'AddExpensePageEvent.validateExpenseFields()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateExpenseFieldsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addExpense,
    required TResult Function() getAllCategories,
    required TResult Function(String amount) updateAmount,
    required TResult Function(String category) updateCategory,
    required TResult Function(String description) updateDescription,
    required TResult Function() validateExpenseFields,
  }) {
    return validateExpenseFields();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addExpense,
    TResult? Function()? getAllCategories,
    TResult? Function(String amount)? updateAmount,
    TResult? Function(String category)? updateCategory,
    TResult? Function(String description)? updateDescription,
    TResult? Function()? validateExpenseFields,
  }) {
    return validateExpenseFields?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addExpense,
    TResult Function()? getAllCategories,
    TResult Function(String amount)? updateAmount,
    TResult Function(String category)? updateCategory,
    TResult Function(String description)? updateDescription,
    TResult Function()? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (validateExpenseFields != null) {
      return validateExpenseFields();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveExpenseEvent value) addExpense,
    required TResult Function(GetAllCategories value) getAllCategories,
    required TResult Function(UpdateAmount value) updateAmount,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(UpdateDescription value) updateDescription,
    required TResult Function(ValidateExpenseFields value)
        validateExpenseFields,
  }) {
    return validateExpenseFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveExpenseEvent value)? addExpense,
    TResult? Function(GetAllCategories value)? getAllCategories,
    TResult? Function(UpdateAmount value)? updateAmount,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(UpdateDescription value)? updateDescription,
    TResult? Function(ValidateExpenseFields value)? validateExpenseFields,
  }) {
    return validateExpenseFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveExpenseEvent value)? addExpense,
    TResult Function(GetAllCategories value)? getAllCategories,
    TResult Function(UpdateAmount value)? updateAmount,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(UpdateDescription value)? updateDescription,
    TResult Function(ValidateExpenseFields value)? validateExpenseFields,
    required TResult orElse(),
  }) {
    if (validateExpenseFields != null) {
      return validateExpenseFields(this);
    }
    return orElse();
  }
}

abstract class ValidateExpenseFields implements AddExpensePageEvent {
  const factory ValidateExpenseFields() = _$ValidateExpenseFieldsImpl;
}
