

class DateSlots {
  final String date;
  final String displayText;
  final List<TimeSlot> afternoonSlots;
  final List<TimeSlot> eveningSlots;

  DateSlots({
    required this.date,
    required this.displayText,
    required this.afternoonSlots,
    required this.eveningSlots,
  });

  bool get hasAvailableSlots =>
      afternoonSlots.any((slot) => slot.isAvailable) ||
          eveningSlots.any((slot) => slot.isAvailable);

  int get totalAvailableSlots =>
      afternoonSlots.where((slot) => slot.isAvailable).length +
          eveningSlots.where((slot) => slot.isAvailable).length;
}


class TimeSlot {
  final String time;
  final bool isAvailable;

  TimeSlot({required this.time, this.isAvailable = true});
}

final List<DateSlots> dateSlotsList = [
  DateSlots(
    date: 'Today, 23 Feb',
    displayText: 'Today, 23 Feb',
    afternoonSlots: [],
    eveningSlots: [],
  ),
  DateSlots(
    date: 'Tomorrow, 24 Feb',
    displayText: 'Tomorrow, 24 Feb',
    afternoonSlots: [
      TimeSlot(time: '1:00 PM'),
      TimeSlot(time: '1:30 PM'),
      TimeSlot(time: '2:00 PM'),
      TimeSlot(time: '2:30 PM'),
      TimeSlot(time: '3:00 PM'),
      TimeSlot(time: '3:30 PM'),
      TimeSlot(time: '4:00 PM'),
    ],
    eveningSlots: [
      TimeSlot(time: '5:00 PM'),
      TimeSlot(time: '5:30 PM'),
      TimeSlot(time: '6:00 PM'),
      TimeSlot(time: '6:30 PM'),
      TimeSlot(time: '7:00 PM'),
    ],
  ),
  DateSlots(
    date: 'Thu, 25 Feb',
    displayText: 'Thursday, 25 Feb',
    afternoonSlots: [
      TimeSlot(time: '2:00 PM'),
      TimeSlot(time: '2:30 PM'),
      TimeSlot(time: '3:00 PM'),
      TimeSlot(time: '4:00 PM'),
    ],
    eveningSlots: [
      TimeSlot(time: '5:00 PM'),
      TimeSlot(time: '6:00 PM'),
      TimeSlot(time: '6:30 PM'),
    ],
  ),
];
