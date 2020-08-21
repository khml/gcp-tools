#!/bin/bash -x

git clone git://github.com/yyuu/pyenv.git ~/.pyenv
{
  echo '# >> pyenv setting >>==============='
  echo 'export PYENV_ROOT="${HOME}/.pyenv"'
  echo 'export PATH="$PYENV_ROOT/bin:$PATH"'
  echo 'eval "$(pyenv init -)"'
  echo '# <<================================'
}  >> ~/.bashrc

echo "please reload .bashrc file"
echo "e.g."
echo "$ cd ~/"
echo "$ source .bashrc"

