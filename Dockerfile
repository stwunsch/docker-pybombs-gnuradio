# GNU Radio with UHD via PyBOMBS

# Derive from Ubuntu with PyBOMBS and UHD with preinstalled dependencies
FROM stwunsch/docker-pybombs-gnuradio-depsonly

# Setup packages which should be installed by PyBOMBS
ENV packages "gnuradio-base"

# Update apt-get
RUN apt-get update

# Pull new gnuradio recipe for PyBOMBS with reduced packages
RUN wget https://raw.githubusercontent.com/stwunsch/docker-pybombs-gnuradio/master/gnuradio-base.lwr && \
    mv gnuradio-base.lwr /root/.pybombs/recipes/gr-recipes

# Install previously selected packages and clean-up unused source
RUN pybombs -p ${PyBOMBS_prefix} -v install --no-deps ${packages} && rm -rf ${PyBOMBS_init}/src/*
