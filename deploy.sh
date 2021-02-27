#cp .config ~/

for f in $(ls -A | egrep '^\.')
do 
    if ! [ "$f" -ef ".git" ]
    then
        echo "Copying $f"
        cp -r $f ~/
    fi
done
