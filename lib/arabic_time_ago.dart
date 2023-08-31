class ArabicTimeAgo {
  static String getTimeAgo(int millisecondsCreationTimestamp) {
    const int secondMillis = 1000;
    const int minuteMillis = 60 * secondMillis;
    const int hourMillis = 60 * minuteMillis;
    const int dayMillis = 24 * hourMillis;
    const int weekMillis = 7 * dayMillis;
    const int monthMillis = 30 * dayMillis;
    const int yearMillis = 12 * monthMillis;

    DateTime now = DateTime.now();
    final int diff = now.millisecondsSinceEpoch - millisecondsCreationTimestamp;

    if (diff < secondMillis) {
      return "قبل لحظات";
    } else if (diff < 2 * minuteMillis) {
      return "قبل دقيقة";
    } else if (diff < 59 * minuteMillis) {
      return "قبل  ${diff ~/ minuteMillis}  د";
    } else if (diff < 90 * minuteMillis) {
      return "قبل ساعة";
    } else if (diff < 3 * hourMillis) {
      return "قبل ساعتان";
    } else if (diff < 11 * hourMillis) {
      return "قبل  ${diff ~/ hourMillis} ساعات";
    } else if (diff < 24 * hourMillis) {
      return "قبل  ${diff ~/ hourMillis} ساعة";
    } else if (diff < 48 * hourMillis) {
      //return context.getString(R.string.yesterday) + "  " + getHour(String.valueOf(date));
      return "يوم أمس ";
    } else if (diff < 3 * dayMillis) {
      return "قبل يومين";
    } else if (diff < 6 * dayMillis) {
      return "قبل  ${diff ~/ dayMillis}  أيام";
    } else if (diff < 11 * dayMillis) {
      return "قبل أسبوع";
    } else if (diff < 3 * weekMillis) {
      return "قبل أسبوعين";
    } else if (diff < 4 * weekMillis) {
      return "قبل ${diff ~/ weekMillis} أسابيع";
    } else if (diff < 2 * monthMillis) {
      return "قبل شهر";
    } else if (diff < 3 * monthMillis) {
      return "قبل شهرين";
    } else if (diff < 10 * monthMillis) {
      return "قبل ${diff ~/ monthMillis} اشهر";
    } else if (diff < 12 * monthMillis) {
      return "قبل ${diff ~/ monthMillis} شهرا";
    } else if (diff < 24 * monthMillis) {
      return "قبل سنة";
    } else if (diff < 3 * yearMillis) {
      return "قبل سنتان";
    } else {
      return "قبل ${diff ~/ yearMillis} سنوات";
    }
  }
}
