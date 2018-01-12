const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

const teaAndBiscuits = (callback) => {
  let first, second;
  reader.question('Would you like some tea?', (res) => {
    console.log(`You replied with ${res}`);
    reader.question('Want sum biscuits?', (res2) => {
      console.log(`You replied wid ${res2}`);
      first = res;
      second = res2;
      callback(first, second);

      reader.close();
    });
  });
}



teaAndBiscuits(function(f, s) {
  const firstRes = (f === 'yes') ? 'do' : 'don\'t';
  const secondRes = (s === 'yes') ? 'do' : 'don\'t';
  console.log(`you ${firstRes} want tea and ${secondRes} want biscuits`);
});
