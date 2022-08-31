# How to update flatpak requirements

Update flatpak pip install files:

~~~~~~~~~~~~~~~~~.sh
wget https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/master/pip/flatpak-pip-generator
chmod +x flatpak-pip-generator
grep -v 'psycopg2-binary' requirements.txt > flatpak-requirements.txt
./flatpak-pip-generator --requirements-file flatpak-requirements.txt  --output flatpak-pip-installs --yaml
~~~~~~~~~~~~~~~~~

# Building flatpak

~~~~~~~~~~~~~~~~~.sh
flatpak-builder --force-clean flatpak-build/ flatpak.yaml
~~~~~~~~~~~~~~~~~
