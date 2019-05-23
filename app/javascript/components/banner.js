// app/javascript/components/banner.js
import Typed from 'typed.js';

const typedElement = document.getElementById('banner-typed-text');


const loadDynamicBannerText = () => {
  if (typedElement) {
    new Typed('#banner-typed-text', {
      strings: ["Welcome to RentOutdoors", "Come to us"],
      typeSpeed: 35,
      loop: true,
    });
  }
}

export { loadDynamicBannerText };
