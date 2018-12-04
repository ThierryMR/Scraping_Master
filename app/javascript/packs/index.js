/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

console.log('Hello World from Webpacker')

const scrapeIt = require("scrape-it")
let data;

scrapeIt("https://coinmarketcap.com/currencies/bitcoin/historical-data/?start=20130428&end=20181129", {
    thead: "thead"
    // , tbody: "tr"
    // , dates: ".text-left"
    ,td: "table td[data-format-value]"
    // , teste: ".text-right"
    // , title: "h2.bottom-margin-1x"
}).then(({ data, response }) => {
    console.log(`Status Code: ${response.statusCode}`)
    // array = data
    // console.log(data)

})


function imprimir(item) {
    console.log(item);
}
  // data.forEach(imprimir)

// for (i = 0, i < 10, i++){
//   console.log("Hello World")
// }

let samba = [1,2,3,4,5,6,7,8,9,10]

for (let i of samba) {

   console.log(samba[i])// logs "3", "5", "7"
}
// console.log(data)
// array.forEach(imprimir)
for (j = 3; j < 6 ; j++) {
    console.log("Hello World")

}
