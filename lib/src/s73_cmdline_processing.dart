import 'dart:collection';
import 'dart:io';

int s73CmdLineProcessing(String option, String optionValue) {
  print('Selected Option: $option, OptionValue: $optionValue');
  print('');
  switch (option) {
    case 'f':
      return showDurationByTag(optionValue);
      break;
    default:
      break;
  }
  return 0;
}

/*
Column Headers:
0 "Job",                    "Code With Andrea",
1 "Clocked In",             "03/01/2019 23:00",
2 "Clocked Out",            "04/01/2019 00:30",
3 "Duration",               "1.5",
4 "Comment",                "",
5 "Tags",                   "Blogging",
6 "Breaks",                 "",
7 "Adjustments",            "",
8 "TotalTimeAdjustment",    "",
9 "TotalEarningsAdjustment" ""
*/

// The task of s73 is to show the totals by Activity Type (tags)

/*
Pseudo code for task

lines = readFile(inputFile)
lines.removeFirst() // as this is the header row
create an empty map called durationByTag
for (line in lines)
  values = line.split(',')
  duration = values[3]
  tag = values[5]
  update(durationByTag[tag], duration)
end
printAll(durationByTag)
*/
int showDurationByTag(String filename) {
  final totalDurationByTag = <String, double>{}; // Create an empty map
  final totalDuration = computeDurationByTag(filename, totalDurationByTag);
  if (totalDuration == 0) {
    return -2;
  } else {
    final sortedDurationByTag = sortMap(totalDurationByTag);
    printDurationByTag(sortedDurationByTag, totalDuration);
    return 0;
  }
}

double computeDurationByTag(
    String filename, Map<String, double> totalDurationByTag) {
  var totalDuration = 0.0;
  final lines = File(filename).readAsLinesSync();
  lines.removeAt(0);
  for (var line in lines) {
    final lineValues = line.split(',');

    final durationStr = lineValues[3].replaceAll('"', '');
    final duration = double.parse(durationStr);

    final tag = lineValues[5].replaceAll('"', '');

    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
    totalDuration += duration;
  }
  return totalDuration;
}

void printDurationByTag(
    Map<String, double> totalDurationByTag, double totalDuration) {
  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = (entry.key == '' ? 'Unallocated' : entry.key);
    print('${durationFormatted}h\t$tag');
  }
  print('');
  print('Total for all tags: ${totalDuration.toStringAsFixed(1)}h');
}

Map<String, double> sortMap(Map<String, double> totalDurationByTag) {
  var sortedByValue = SplayTreeMap<String, double>.from(
      totalDurationByTag,
      (key1, key2) =>
          totalDurationByTag[key1].compareTo(totalDurationByTag[key2]));
  return sortedByValue;
}
