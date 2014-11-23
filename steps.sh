
  738  l
  739  uglifyjs bunapp.js  --in-source-map bunapp.js.map --source-map bunapp.min.js.map --output bunapp.min.js --source-map-include-sources
  740  uglifyjs --source-map-include-sources --in-source-map vendor.js.map --source-map vendor.min.js.map --output vendor.min.js vendor.js
  741  node fixsourcemaps.js bunapp.js.map bunapp.min.js.map bunapp.min.js.map 
  742  node fixsourcemaps.js bunapp.js.map vendor.min.js.map vendor.min.js.map 
  743  node fixsourcemaps.js vendor.js.map vendor.min.js.map vendor.min.js.map 
  744  l *min*.map
  745  rm *min*.map
  746  uglifyjs --source-map-include-sources --in-source-map vendor.js.map --source-map vendor.min.js.map --output vendor.min.js vendor.js
  747  uglifyjs bunapp.js  --in-source-map bunapp.js.map --source-map bunapp.min.js.map --output bunapp.min.js --source-map-include-sources
  748  node fixsourcemaps.js vendor.js.map vendor.min.js.map vendor.min.js.map 
  749  node fixsourcemaps.js bunapp.js.map bunapp.min.js.map bunapp.min.js.map 
  750  l
  751  cp fixsourcemaps.js ../
  752  l
  753  history
  754  history > steps.sh
