import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

const meow = new Audio("/assets/meow.mp3");
document.addEventListener("turbo:load", () => {
  document.addEventListener("click", (event) => {
    if (event.target.closest(".delete-link")) {
      return;
    }
// target closest checks the parent element and rules it out as an exception
// so in this case, play on click unless it has the class delete link
    meow.currentTime = 0;
    meow.play();
  });
});



const angry = new Audio("/assets/angry.mp3");
document.addEventListener("turbo:load", () => {
  document.querySelectorAll(".delete-link").forEach((link) => {

    link.addEventListener("click", () => {
      angry.currentTime = 0;
      angry.play();
    });
  });
});
