class ArabicTimeAgo {
  static String getTimeAgo(int millisecondsCreationTimestamp) {
    const int SECOND_MILLIS = 1000;
    const int MINUTE_MILLIS = 60 * SECOND_MILLIS;
    const int HOUR_MILLIS = 60 * MINUTE_MILLIS;
    const int DAY_MILLIS = 24 * HOUR_MILLIS;
    const int WEEK_MILLIS = 7 * DAY_MILLIS;
    const int MONTH_MILLIS = 30 * DAY_MILLIS;
    const int YEAR_MILLIS = 12 * MONTH_MILLIS;

    DateTime now = DateTime.now();
    final int diff = now.millisecondsSinceEpoch - millisecondsCreationTimestamp;

    if (diff < SECOND_MILLIS) {
      return "قبل لحظات";
    } else if (diff < 2 * MINUTE_MILLIS) {
      return "قبل دقيقة";
    } else if (diff < 59 * MINUTE_MILLIS) {
      return "قبل  ${diff ~/ MINUTE_MILLIS}  د";
    } else if (diff < 90 * MINUTE_MILLIS) {
      return "قبل ساعة";
    } else if (diff < 3 * HOUR_MILLIS) {
      return "قبل ساعتان";
    } else if (diff < 11 * HOUR_MILLIS) {
      return "قبل  ${diff ~/ HOUR_MILLIS} ساعات";
    } else if (diff < 24 * HOUR_MILLIS) {
      return "قبل  ${diff ~/ HOUR_MILLIS} ساعة";
    } else if (diff < 48 * HOUR_MILLIS) {
      //return context.getString(R.string.yesterday) + "  " + getHour(String.valueOf(date));
      return "يوم أمس ";
    } else if (diff < 3 * DAY_MILLIS) {
      return "قبل يومين";
    } else if (diff < 6 * DAY_MILLIS) {
      return "قبل  ${diff ~/ DAY_MILLIS}  أيام";
    } else if (diff < 11 * DAY_MILLIS) {
      return "قبل أسبوع";
    } else if (diff < 3 * WEEK_MILLIS) {
      return "قبل أسبوعين";
    } else if (diff < 4 * WEEK_MILLIS) {
      return "قبل ${diff ~/ WEEK_MILLIS} أسابيع";
    } else if (diff < 2 * MONTH_MILLIS) {
      return "قبل شهر";
    } else if (diff < 3 * MONTH_MILLIS) {
      return "قبل شهرين";
    } else if (diff < 10 * MONTH_MILLIS) {
      return "قبل ${diff ~/ MONTH_MILLIS} اشهر";
    } else if (diff < 12 * MONTH_MILLIS) {
      return "قبل ${diff ~/ MONTH_MILLIS} شهرا";
    } else if (diff < 24 * MONTH_MILLIS) {
      return "قبل سنة";
    } else if (diff < 3 * YEAR_MILLIS) {
      return "قبل سنتان";
    } else {
      return "قبل ${diff ~/ YEAR_MILLIS} سنوات";
    }
  }
}
