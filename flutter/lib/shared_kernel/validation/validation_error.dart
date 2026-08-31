class ValidationError {
  const ValidationError({
    this.propertyName,
    required this.errorMessage,
    this.attemptedValue,
  });

  final String? propertyName;
  final String errorMessage;
  final dynamic attemptedValue;

  @override
  String toString() {
    if (propertyName != null && propertyName!.isNotEmpty) {
      return '$propertyName: $errorMessage';
    }
    return errorMessage;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValidationError &&
        other.propertyName == propertyName &&
        other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => Object.hash(propertyName, errorMessage);
}
