# Disable bell in Xorg
if [ -n "$DISPLAY" ]; then
  xset b off
fi

# NVM loading
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
