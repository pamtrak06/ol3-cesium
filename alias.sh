source ~/Documents/docker/ol3-cesium/config.sh
scripts=$(ls $curdir/*.sh | grep -v alias.sh)
prefix=$(basename $curdir)
for s in $scripts; do
  base=$(basename $s)
  alias d${prefix}${base%.sh}=". $curdir/$base"
  alias ed${prefix}${base%.sh}="vi $curdir/$base"
  #unalias d${prefix}${s%.sh}
done
alias
