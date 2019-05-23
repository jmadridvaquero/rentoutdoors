import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

// app/javascript/packs/application.js
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
initMapbox();
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#booking-confirmation', {
  title: "Your booking has been sent to the equipment owner?",
  text: "Once confirmed by owner, you will receive a notification",
  icon: "success",
  buttons: true,
  dangerMode: false,
}, (willConfirm) => {
  if (willConfirm) {
    // swal("Bam, Your booking has been created!", {
    //   icon: "success",
    // }).then(() => {
      const form = document.getElementById('new_booking');
      form.submit()
   // });
  } else {
    swal("Your booking has been cancelled!");
  }
});
