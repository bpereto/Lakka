for p in $(find . -name package.mk)
do
    PKG_URL=
    . $p
    echo "$PKG_GIT_URL"
    PKG_URL="$PKG_GIT_URL/archive/\$PKG_VERSION.tar.gz"
    echo $PKG_URL
    echo "PKG_URL=\"$PKG_URL\"" >> $p
done
