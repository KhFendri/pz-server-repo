###########################################################
# Dockerfile that builds a PZ server
###########################################################
FROM danixu86/project-zomboid-dedicated-server:latest

# Update package lists
RUN apt-get update

# Copy etc files
COPY --chown=${USER}:${USER} etc /etc
# Copy setup_filebrowser file
COPY --chown=${USER}:${USER} scripts /server/scripts

RUN  /server/scripts/setup_filebrowser.sh
RUN  /server/scripts/install_tmux.sh
RUN  /server/scripts/install_nano.sh

ENTRYPOINT ["/server/scripts/entry.sh"]