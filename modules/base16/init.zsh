#
# Integrates Base 16 Colorschemes
#
# See https://github.com/chriskempson/base16-shell
#
# Author:
#   Daniel Haus <daniel.haus@businesstools.de>
#

_BASE16_THEME=${0:h}/themes/base16-${BASE16_THEME:-default}.${BASE16_BACKGROUND:-dark}.sh

if [[ -s $_BASE16_THEME ]]; then
  source $_BASE16_THEME
fi
