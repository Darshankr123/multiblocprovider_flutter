import "package:equatable/equatable.dart";

abstract class CounterEvent{}

class IncrementCount extends CounterEvent{}

class DecrementCount extends CounterEvent{}