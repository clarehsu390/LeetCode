let quiz = document.getElementById('quiz');

let submit = document.getElementById('submit');

function validate() {
	return new Promise((resolve, reject) => {
  			let selectCard = quiz[quiz.selectedIndex].value;
        console.log(selectCard);
    if (selectCard === 'selectcard') {
    	alert('Please select a card');
    } else {
      resolve(selectCard);
    }
  
  }
 );
 }

	

function checkSubmission() {
	
  	let div = document.createElement('div');
    div.innerHTML = 'Are you sure you want to submit?'
  document.body.appendChild(div);
 
  
  
}

function correct() {
	let option = 	quiz.options[quiz.selectedIndex].text;
  
  if (option === 'A') {
  	let div = document.createElement('div');
    div.innerHTML = 'YAY! That is correct'
    document.body.appendChild(div);
  } else {
  throw(err);
  }
}

function incorrect() {
	let div = document.createElement('div');
  div.innerHTML = 'Try again';
  document.body.appendChild(div);
}
/* 
console.log(checkSubmission()); */
submit.addEventListener('click', () => {validate().then(correct).catch(incorrect)})