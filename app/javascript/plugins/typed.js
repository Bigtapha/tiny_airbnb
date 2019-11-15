import Typed from 'typed.js';
const typejs = () => {

// var options = {
//   // strings: ['azertyytressdffg gghuuiiioooo', 'Bienvenue chez vous, Votre cocon vous attend'],
//   strings: ['First ^1000 azertyytressdffg gghuuiiioooo.', 'Bienvenue chez vous, Votre cocon vous attend.'],
//   // strings: ['Bienvenue chez vous', ' Votre cocon vous attend'],
//   typeSpeed: 40
// };
result = document.querySelector('#typed-strings')
console.log(result)
if (result){
  var typed = new Typed('#typed', {
    stringsElement: '#typed-strings',
    typeSpeed: 150,
    loop: true,
  });
}


// var typed = new Typed('#typejs', options);

}

export { typejs };
