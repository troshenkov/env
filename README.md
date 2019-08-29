
### Vim configuration

```sh
git clone git://github.com/amix/vimrc.git 
git clone https://github.com/scopatz/nanorc.git
````
<https://github.com/ets-labs/python-vimrc>


### TMUX  
 
 ```sh
wget https://github.com/libevent/libevent/archive/release-2.1.10-stable.tar.gz
tar -xvzf release-2.1.10-stable.tar.gz
cd libevent-release-2.1.10-stable/
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=$HOME/.local ..
make && make install
```

```sh
wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz
tar -xvzf ncurses-6.1.tar.gz && cd $_
./configure --prefix=$HOME/.local
make && make install
```

```sh
export LIBEVENT_CFLAGS="-I$HOME/.local/include"
export LIBEVENT_LIBS="-L$HOME/.local/lib -levent"

wget https://github.com/tmux/tmux/archive/2.9a.tar.gz
tar -xvzf 2.9a.tar.gz
cd tmux-2.9a
./autogen.sh
./configure --prefix=$HOME/.local CFLAGS="-I$HOME/.local/include" LDFLAGS="-L$HOME/.local/lib"
make && make install

export LD_LIBRARY_PATH="$HOME/.local/lib"
alias tmux=/users/$USER/.local/bin/tmux
MANPATH=$MANPATH:/users/$USER/.local/man
export PATH=$HOME/.local/bin:$PATH
```
### Ansible installation from source

```sh
git clone git://github.com/ansible/ansible.git --recursive
cd ./ansible
curl -LO https://bootstrap.pypa.io/get-pip.py
export PATH=$HOME/.local/bin:$PATH
python get-pip.py --user
python setup.py sdist
tar xvzf dist/ansible-2.8.0.dev0.tar.gz -C /auto/edalocal_sjc/
mv /auto/edalocal_sjc/ansible-2.8.0.dev0 /auto/edalocal_sjc/ansible
cp -r hacking/ /auto/edalocal_sjc/ansible/ && cd $_
pip install -r ./requirements.txt
```
### How to make an Ansible environment

```sh
cd $HOME
git clone git@gitlab-sjc.cisco.com:dtroshen/ansible.git
source $HOME/ansible/hacking/env-setup -q
ansible --version (ansible 2.8.0.dev0)
```


