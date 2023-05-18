class EventDatesCheckbox {
  Map<int, bool> _eventDatesCheckbox = {};

  void onMapChanged(Map<int, bool> newChangedMap) {
    _eventDatesCheckbox = newChangedMap;
  }

  List<int> getTrueKeys() {
    return _eventDatesCheckbox.entries
        .where((e) => e.value)
        .map((e) => e.key)
        .toList();
  }

  @override
  String toString() {
    return _eventDatesCheckbox.toString();
  }
}
