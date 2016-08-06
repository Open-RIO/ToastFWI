require 'fileutils'

SOURCES = [
    "shared.fwi",
    "private.fwi"
]

FileUtils.rm_rf('build/cpp')

`fwi -l cpp -d src --headers build/cpp/include --sources build/cpp/src --header_ext .fwi.hpp --source_ext .fwi.cpp #{SOURCES.join " "}`