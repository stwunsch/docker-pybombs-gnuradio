# GNU Radio with UHD via PyBOMBS

# Derive from Ubuntu with PyBOMBS and UHD
FROM stwunsch/docker-pybombs-uhd

# Setup packages which should be installed by PyBOMBS
ENV packages "gnuradio"

# Update apt-get
RUN apt-get update

# Install previously selected packages
RUN pybombs -p ${PyBOMBS_prefix} -v install ${packages}
