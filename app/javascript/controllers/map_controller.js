import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(
                (position) => {
                    const lat = position.coords.latitude;
                    const lon = position.coords.longitude;

                    this.map = L.map('map').setView([lat, lon], 13);

                    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
                        maxZoom: 19,
                        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
                    }).addTo(this.map);

                    L.marker([lat, lon]).addTo(this.map)
                        .bindPopup('You are here - Zajebiscie Co :).')
                        .openPopup();
                },
                (error) => {
                    console.error("Geolocation error:", error);
                    alert("Unable to retrieve your location.");
                }
            );
        } else {
            alert("Geolocation is not supported by your browser.");
        }
    }
}