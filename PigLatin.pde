final String holders = "^(qu)|^[^aeiou]+";

public void setup() {

	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");

	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw() {
        //not used
}

//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1

public int findFirstVowel(String sWord) {
	return -1;
}

//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord

public String pigLatin(String sWord) {
	return (match(sWord, holders) == null ? sWord + "w" : sWord.replaceFirst(holders, "") + match(sWord, holders)[0]) + "ay";
}
