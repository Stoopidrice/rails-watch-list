import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

const meow = new Audio("/assets/meow.mp3");

document.addEventListener("click", () => {
  meow.currentTime = 0;
  meow.play();
});
