find ./package-managers -type f -name '*.sh' -exec bash {} \;
find ./deps -type f -name '*.sh' -exec bash {} \;
find ./services -type f -name '*.sh' -exec bash {} \;
find ./terminal -type f -name '*.sh' -exec bash {} \;
find ./configs -type f -name '*.sh' -exec bash {} \;
find ./fonts -type f -name '*.sh' -exec bash {} \;
find ./jobs -type f -name '*.sh' -exec bash {} \;

rsync -a --ignore-existing ./home/ $HOME/
rsync -a --ignore-existing ./root/ /

if [ ! -f /etc/wsl.conf ]; then 
    find ./applications -type f -name '*.sh' -exec bash {} \;
fi

echo "The installer has run to completion."