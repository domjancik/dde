# DomjDevEnv

from ubuntu

RUN apt update
RUN apt install -y curl
RUN curl -fsSL https://code-server.dev/install.sh | sh

# TODO Can't find config.yaml wut?
# WORKDIR /root/.config/code-server
# COPY config.yml ./config.yaml

# Let's do it line by line
WORKDIR /root/.config/code-server
# RUN rm config.yaml
RUN echo bind-addr: 0.0.0.0:8080 >> config.yaml
RUN echo auth: password >> config.yaml
RUN echo password: open >> config.yaml
RUN echo cert: false >> config.yaml

COPY settings.json /root/.local/share/code-server/User/settings.json

# code-server as service
# sudo systemctl enable --now code-server@$USER

# code-server just now
CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
# CMD ["bash"]

