// app/javascript/components/banner.js
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Welcome to RentOutdoors", "Come to us"],
    typeSpeed: 35,
    loop: true,
  });
}

export { loadDynamicBannerText };
