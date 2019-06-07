import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

import PinBasket from '../assets/pin-basketball.png';
import PinPetanque from '../assets/pin-petanque.png';
import PinFootball from '../assets/pin-foootball.png';
import PinParc from '../assets/pin-parc.png';
import PinVolleyball from '../assets/volleyball-pin.png';
import PinSkatepark from '../assets/pin-skateboard.png';
import PinFitness from '../assets/pin-fitness.png';
import PinPingPong from '../assets/pin-ping-pong.png';


const activities = {
  Basketball: PinBasket,
  Petanque: PinPetanque,
  Football: PinFootball,
  Parc: PinParc,
  Volleyball: PinVolleyball,
  Skatepark: PinSkatepark,
  Fitness: PinFitness,
  Pingpong: PinPingPong,
}

const mapElement = document.getElementById('map');

const addMarkers = (map, markers) => {
markers.forEach((marker) => {
  const popup = new mapboxgl.Popup().setHTML(marker.infowindow); // add this
  var el = document.createElement('div');
  el.className = 'marker';
  el.style.backgroundImage = `url(${activities[marker.activity]})`;
  el.style.width = '50px';
  el.style.height = '60px';
  el.style.backgroundSize = '50px';
  el.dataset.activity = marker.activity;

  var pin = new mapboxgl.Marker(el);

  pin
    .setLngLat([ marker.lng, marker.lat ])
    .setPopup(popup)
    .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => { 
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
      interactive: true,
      container: 'map',
      style: 'mapbox://styles/carolineplin/cjwi12jcs0eue1csfsnsgcbep'
    });

    const markers = JSON.parse(mapElement.dataset.markers);

    fitMapToMarkers(map, markers);
    addMarkers(map, markers);
    // const geocodou = new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: map });
    // document.getElementById('geocoder').appendChild(geocodou.onAdd(map));
  }
};

document.querySelectorAll(".card-choice").forEach((checkbox) => {
  checkbox.addEventListener("click", (e) => {
    var activity = e.target.id;

    document.querySelectorAll(".marker").forEach((marker) => {
      marker.classList.toggle("hidden");
    });

    document.querySelectorAll("div[data-activity='" + activity + "']").forEach((marker) => {
      marker.classList.remove("hidden");
    })
  })
})

export { initMapbox };
