
var fs = require('fs');

var sourceBuffer = fs.readFileSync(process.argv[2]);
var minifiedBuffer = fs.readFileSync(process.argv[3]);
var output = process.argv[4];

var sourceMap, minifiedMap;

try{
  sourceMap = JSON.parse(sourceBuffer);
}catch(e){
  throw e;
}

try{
  minifiedMap = JSON.parse(minifiedBuffer);
}catch(e){
  throw e;
}

minifiedMap.sourcesContent = sourceMap.sourcesContent;


console.log("writing to ", output);
fs.writeFileSync(output, JSON.stringify(minifiedMap), {encoding: "utf8"});







