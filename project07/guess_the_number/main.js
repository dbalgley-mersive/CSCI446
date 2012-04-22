var guessesLeft = 1;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var randomNumber = Math.floor(Math.random() * 101);


$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
  populateRandNumber(randomNumber);
});

function guessChecker() {
	var inputField = document.getElementById("guess");
	var entry = parseFloat( inputField.value );
	//alert(entry);
	guess = entry;
	//lert("guesschecker");
	if(guess == randomNumber) {
		alert("Win");
		document.getElementById( "guess" ).value="";
		return;
	}
	if(guess < randomNumber) {
		alert("Too low");
		guessesLeft=guessesLeft-1;
		updateScore(guessesLeft);
		document.getElementById( "guess" ).value="";
		return;
	}
	if(guess > randomNumber) {
		alert("Too high");
		guessesLeft=guessesLeft-1;
		updateScore(guessesLeft);
		document.getElementById( "guess" ).value="";
		return;
	}

}

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}

function populateRandNumber(randomNumber) {
	$('h2#randomNumber span#randomNumber').append(randomNumber);
}