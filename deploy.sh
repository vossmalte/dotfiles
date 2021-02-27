#cp .config ~/

for f in $(ls -A | egrep '^\.')
do 
    echo "Copying $f"
    cp -r $f ~/
done
