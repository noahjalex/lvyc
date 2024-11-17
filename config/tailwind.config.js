module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
    "./app/views/**/*.html.erb",
  ],
  theme: {
    extend: {},
  },
  plugins: [require("tailwindcss")],
  // plugins: [
  //   require("@tailwindcss/forms"),
  //   require("@tailwindcss/typography"),
  //   require("@tailwindcss/container-queries"),
  // ],
};
