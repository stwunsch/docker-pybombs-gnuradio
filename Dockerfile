# GNU Radio with UHD via PyBOMBS

# Derive from Ubuntu with PyBOMBS and UHD with preinstalled dependencies
FROM stwunsch/docker-pybombs-gnuradio-depsonly

# Setup packages which should be installed by PyBOMBS
ENV packages "gnuradio"

# Update apt-get
RUN apt-get update

# Install previously selected packages and clean-up unused source
RUN pybombs -p ${PyBOMBS_prefix} -v install --no-deps ${packages} && rm -rf ${PyBOMBS_init}/src/*
