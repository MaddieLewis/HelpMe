import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelectorAll('#task_address, #address');
  addressInput.forEach(element => {
    if (element) {
    places({ container: element });
  }
  });
};

export { initAutocomplete };
