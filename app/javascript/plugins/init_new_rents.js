
// function myFunction() {
//   var x = document.getElementById("myDIV");
//   if (x.style.display === "none") {
//     x.style.display = "block";
//   } else {
//     x.style.display = "none";
//   }
// }

const visible = (id_selector) => {
  const div = document.querySelector(id_selector);
  console.log(div)
  if (div.style.display === "block") {
    div.style.display = "none";
  } else {
    div.style.display = "block";
  }
}


const newRents = () => {

  const rent = document.querySelector('.rent');
  if (rent) {
    rent.addEventListener('click', (event) => {
      visible('#rent_form')  
    })
  }

};

export { newRents };

