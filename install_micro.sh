INSTALL_PREFIX='/notebooks/.usr'
INSTALL_PATH="${INSTALL_PREFIX}/bin"
mkdir --parents ${INSTALL_PATH} && cd ${INSTALL_PATH} && curl https://getmic.ro | bash
