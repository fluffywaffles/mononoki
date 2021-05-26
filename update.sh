#!/bin/sh -e
dest=${0:-~/dev/mononoki-custom}
# ls in reverse timestamp order, take last file
latest_project_txt=$(ls -tr ~/downloads/waffles\'\ mononoki*.txt | tail -n1)
latest_export_otf=$( ls -tr ~/downloads/mononoki-Regular*.otf    | tail -n1)

echo "updating project to ${latest_project_txt}"
cp "${latest_project_txt}" ./waffles-mononoki.glyphr.txt

echo "updating otf to ${latest_export_otf}"
cp "${latest_export_otf}" ./waffles-mononoki.otf

echo "cleaning up: deleting export files from ~/downloads"
rm "${latest_project_txt}"
rm "${latest_export_otf}"
