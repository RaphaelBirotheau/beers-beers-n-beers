console.log('hfell');

import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();

$(function () {
  $('[data-toggle="popover"]').popover()
})

// Select2 --> to implement tags
import { initSelect2 } from '../components/init_select2';
import 'select2/dist/css/select2.css';


initSelect2();
