// you have to execute 'yarn add places.js' in terminal to have library in your nodemodule folder

import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelector('#tiny_house_location');
  if (addressInput) {
    places({ container: addressInput , countries: 'fr'});
  }
};

export { initAutocomplete };