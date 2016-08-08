console.log('linked...');

var depositBtn = document.getElementById('depositButton');
var button_deposit_savings = document.getElementById('button_savings_deposit');
var currentamount_savings = document.getElementById('currentamount_savings');
var inputbox_savings = document.getElementById('inputbox_savings');

function depositFunds() {
  var currentamount_savings = display.innerHTML;
  display.innerHTML = currentamount_savings += 10;
  console.log('currentamount_savings');
}

depositButton.addEventListener('click', depositFunds);
