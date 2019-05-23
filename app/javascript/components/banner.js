// app/javascript/components/banner.js
import Typed from 'typed.js';

const typedElement = document.getElementById('banner-typed-text');


const loadDynamicBannerText = () => {
  if (typedElement) {
    new Typed('#banner-typed-text', {
      strings: ["Welcome to RentOutdoors", "Quickly find all the equipment you need for your week-end get-aways"],
      typeSpeed: 15,
      loop: true,
    });
  }
}

export { loadDynamicBannerText };
