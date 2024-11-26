// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import Rails from "@rails.ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import "controllers";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

// document.addEventListener("DOMContentLoaded", () => {
//   const toggleDarkMode = document.getElementById("toggle-dark-mode");

//   if (toggleDarkMode) {
//     toggleDarkMode.addEventListener("click", () => {
//       const html = document.documentElement;
//       const isDarkMode = html.classList.toggle("dark");
//       document.cookie = `dark_mode=${isDarkMode}; path=/;`;
//     });
//   }
// });
