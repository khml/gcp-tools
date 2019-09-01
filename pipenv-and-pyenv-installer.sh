#!/bin/bash -x

pip3 install pipenv

git clone git://github.com/yyuu/pyenv.git ~/.pyenv
echo '# >> pyenv setting >>===============' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo '# <<================================' >> ~/.bashrc

echo "please reload .bashrc file"
echo "e.g."
echo "$ cd ~/"
echo "$ source .bashrc"

