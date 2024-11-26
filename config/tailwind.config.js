module.exports = {
  darkMode: "media",
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
    "./app/views/**/*.html.erb",
  ],
  theme: {
    extend: {
      fontFamily: {
        bodoni: "'Bodoni Moda', serif",
        para: "'Noto Sans', sans-serif",
        montserrat: "'Montserrat', sans-serif",
        sour: "'Sour Gummy', cursive",
      },
    },
  },
  plugins: [require("tailwindcss")],
  // plugins: [
  //   require("@tailwindcss/forms"),
  //   require("@tailwindcss/typography"),
  //   require("@tailwindcss/container-queries"),
  // ],
};
