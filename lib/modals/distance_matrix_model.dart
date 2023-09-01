class DistanceData {
  final List<String> destinationAddresses;
  final List<String> originAddresses;
  final List<RowElements> rows;
  final String status;

  DistanceData({
    required this.destinationAddresses,
    required this.originAddresses,
    required this.rows,
    required this.status,
  });

  factory DistanceData.fromJson(Map<String, dynamic> json) {
    List<String> destAddresses =
        List<String>.from(json['destination_addresses']);
    List<String> origAddresses = List<String>.from(json['origin_addresses']);
    List<RowElements> rowList = [];
    for (var rowJson in json['rows']) {
      rowList.add(RowElements.fromJson(rowJson));
    }
    return DistanceData(
      destinationAddresses: destAddresses,
      originAddresses: origAddresses,
      rows: rowList,
      status: json['status'],
    );
  }
}

class RowElements {
  final List<Element> elements;

  RowElements({required this.elements});

  factory RowElements.fromJson(Map<String, dynamic> json) {
    List<Element> elemList = [];
    for (var elemJson in json['elements']) {
      elemList.add(Element.fromJson(elemJson));
    }
    return RowElements(elements: elemList);
  }
}

class Element {
  final Distance distance;
  final DurationClass duration;
  final String status;

  Element({
    required this.distance,
    required this.duration,
    required this.status,
  });

  factory Element.fromJson(Map<String, dynamic> json) {
    return Element(
      distance: Distance.fromJson(json['distance']),
      duration: DurationClass.fromJson(json['duration']),
      status: json['status'],
    );
  }
}

class Distance {
  final String text;
  final int value;

  Distance({required this.text, required this.value});

  factory Distance.fromJson(Map<String, dynamic> json) {
    return Distance(text: json['text'], value: json['value']);
  }
}

class DurationClass {
  final String text;
  final int value;

  DurationClass({required this.text, required this.value});

  factory DurationClass.fromJson(Map<String, dynamic> json) {
    return DurationClass(text: json['text'], value: json['value']);
  }
}
