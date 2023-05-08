class BeerSong {
  List<String> recite(int startBottles, int numVerses) {
    List<String> verses = [];

    for (int i = 0; i < numVerses; i++) {
      if (startBottles == 0) {
        verses.add(
            'No more bottles of beer on the wall, no more bottles of beer.');
        verses.add(
            'Go to the store and buy some more, 99 bottles of beer on the wall.');
        break;
      } else if (startBottles == 1) {
        verses.add('1 bottle of beer on the wall, 1 bottle of beer.');
        verses.add(
            'Take it down and pass it around, no more bottles of beer on the wall.');
      } else if (startBottles == 2) {
        verses.add('2 bottles of beer on the wall, 2 bottles of beer.');
        verses.add(
            'Take one down and pass it around, 1 bottle of beer on the wall.');
      } else {
        verses.add(
            '$startBottles bottles of beer on the wall, $startBottles bottles of beer.');
        verses.add('Take one down and pass it around, ${startBottles - 1} ' +
            'bottles of beer on the wall.');
      }
      startBottles--;
    }

    return verses;
  }
}
