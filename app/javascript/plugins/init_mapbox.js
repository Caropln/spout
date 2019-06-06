import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');

const addMarkers = (map, markers) => {
markers.forEach((marker) => {
  const popup = new mapboxgl.Popup().setHTML(marker.infowindow); // add this

  new mapboxgl.Marker()
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

export { initMapbox };
