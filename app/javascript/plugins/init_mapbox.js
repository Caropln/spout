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
  // const popup = new mapboxgl.Popup().setHTML(marker.infowindow); // add this
  var el = document.createElement('a');
  el.className = 'marker hidden';
  el.style.backgroundImage = `url(${activities[marker.activity]})`;
  el.style.width = '50px';
  el.style.height = '60px';
  el.href = "/places/" + marker.id + "?activity=" + marker.activity;
  el.style.backgroundSize = '50px';
  el.dataset.activity = marker.activity;

  var pin = new mapboxgl.Marker(el);

  pin
    .setLngLat([ marker.lng, marker.lat ])
    .addTo(map);

    // .setPopup(popup)
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

    if (window.location.pathname == "/places") {
      map.on("load", clickOnURLActivities);
    }
    // const geocodou = new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: map });
    // document.getElementById('geocoder').appendChild(geocodou.onAdd(map));
  }
};

var activitiesChoices = [];

document.querySelectorAll(".card-choice").forEach((checkbox) => {
  checkbox.addEventListener("change", (e) => {
    var activity = e.target.id;

    var index = activitiesChoices.indexOf(activity);

    if (index === -1) {
      activitiesChoices.push(activity);
    } else {
        activitiesChoices.splice(index, 1);
    }

    document.querySelectorAll(".marker").forEach((marker) => {
      // Si le marker a une catégorie qui est dans le tableau on l'affiche
      // Sinon on met la classe hidden
      if (activitiesChoices.includes(marker.dataset.activity)) {
        marker.classList.remove("hidden");
      } else {
        marker.classList.add("hidden");
      }

    });

  })
})

function clickOnURLActivities() {
  var params = location.search
  .slice(1)
  .split('&')
  .map(p => p.split('='))
  .reduce((obj, [key, value]) => ({ ...obj, [key]: value }), {});

  var foundOne = false;

  for (let [activity, value] of Object.entries(activities)) {
    if (params[activity]) {
      $("label[for='" + activity + "']").click();
      foundOne = true;
    }
  }

  if (foundOne == false) {
    for (let [activity, value] of Object.entries(activities)) {
      $("label[for='" + activity + "']").click();
    }
  }

}

export { initMapbox };
