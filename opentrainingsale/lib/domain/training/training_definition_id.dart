class TrainingDefinitionId {
	final String value;

	const TrainingDefinitionId(this.value);

	@override
	bool operator ==(Object other) =>
			identical(this, other) ||
			other is TrainingDefinitionId &&
					runtimeType == other.runtimeType &&
					value == other.value;

	@override
	int get hashCode => value.hashCode;

	@override
	String toString() => 'TrainingDefinitionId($value)';
}

