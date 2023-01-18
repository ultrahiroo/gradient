INSTALL_PREFIX='/notebooks/.usr'
cd /tmp/ && wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && tar xf ta-lib-0.4.0-src.tar.gz \
    && cd ta-lib/ && ./configure --prefix=${INSTALL_PREFIX} && make install && pip install ta-lib \
    && cd .. && rm -rf ta-lib/ ta-lib-0.4.0-src.tar.gz
