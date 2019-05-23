import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelector('#booking-confirmation');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', (event) => {
      swal(options).then(callback); // <-- add the `.then(callback)`
    });
  }
};

export { initSweetalert };
