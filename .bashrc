echo "loading .bashrc"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#First of all, to simplify the repository creation process I added to .bashrc file a new function:

newgit()
{
if [ -z $1 ]; then
echo "usage: $FUNCNAME project-name.git"
else
gitdir="/home27/tvctopin/repositories/$1"
mkdir $gitdir
pushd $gitdir
git --bare init
git --bare update-server-info
cp hooks/post-update.sample hooks/post-update
chmod a+x hooks/post-update
touch git-daemon-export-ok
popd
fi
}