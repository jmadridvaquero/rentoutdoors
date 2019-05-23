// app/javascript/components/banner.js
import Typed from 'typed.js';

const typedElement = document.getElementById('banner-typed-text');


const loadDynamicBannerText = () => {
  if (typedElement) {
    new Typed('#banner-typed-text', {
      strings: ["Find all your weekend adventure equipment!", "Quickly find all the equipment you need for your week-end get-aways"],
      typeSpeed: 100,
      loop: true,
    });
  }
}

export { loadDynamicBannerText };
