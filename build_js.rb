require 'fileutils'

SOURCES = [
    "shared.fwi",
    "private.fwi"
]

FileUtils.rm_rf('build/js')

`fwi -l js -d src -o build/js/src #{SOURCES.join " "}`
`uglifyjs --compress --support-ie8 --mangle -o build/js/bundle.js -- #{Dir.glob("build/js/src/**/*.js").join " "}`