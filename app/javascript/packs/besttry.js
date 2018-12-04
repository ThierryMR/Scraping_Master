// COM ISSO AQUI teriamos o equivalente ao Open indo de 6 em 6

// arry = [0,6,12,18]


// for (let i of arry) {
//    console.log(document.querySelectorAll('table td[data-format-value]')[i].dataset.formatValue) // logs "3", "5", "7"
// }

//-------------------------------------------------------------------

numeros = [0,1,2,3,4,5,6,7,8,9,10] // '11';




// for (i=0, i < 10, i++) {
//   console.log("WTF")
// }

for (j = 0; j < 5 ; j++) {
  console.log("Hello World")
  function tabuadaDe2(item) {
    let sum;
    sum = item*6
    console.log(item*6);
    if (item < 9){
      console.log(`Abaixo de 9 valor igual item: ${item} sum: ${sum} `)
    } else {
      console.log(`Acima de 9 valor igual a item: ${item} sum: ${sum}`)
    }

    // }else {
    //   console.log("Acima de 20")
    // }
}

}

numeros.forEach(tabuadaDe2);

//---------------------------------------------------------------------------

//1 )Preciso criar um array, que tenha o mesmo numero de rows que o conteudo que quero
// puxar

// 2) Multiplicar o index por 6 que assim, vou ter as linhas para cada coluna

// 3) Caso nao consiga obter um numero interromper essa estrutura de repeticao
