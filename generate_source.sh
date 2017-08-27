#!/bin/bash

if [ $# != 1 ]
then
    echo "Argument needed: path to concrete/thrift."
    exit 1
fi

TEMPPATH=temp/

rm -rf src/Data/Concrete/Autogen/*

# Create a single Thrift file that includes all Concrete files
mkdir -p ${TEMPPATH}/thrift
cp ${1}/*thrift ${TEMPPATH}/thrift
echo > ${TEMPPATH}/concrete.thrift
for x in ${TEMPPATH}/thrift/*thrift
do
    y=`basename $x`
    echo "include \"${y}\"" >> ${TEMPPATH}/concrete.thrift
done

# Invoke Thrift to auto-generate code
mkdir -p src/Data/Concrete/Autogen
thrift -out ${TEMPPATH} -r --gen hs -I ${TEMPPATH}/thrift ${TEMPPATH}/concrete.thrift

cat package.yaml.template > package.yaml

PREFIX="Data.Concrete.Autogen"

# Client, Iface, bare
for x in ${TEMPPATH}/*Iface.hs
do
    n=`basename $x _Iface.hs`
    y=`basename $x .hs`
    echo -e "    - ${PREFIX}.${n}_Iface\n    - ${PREFIX}.${n}_Client\n    - ${PREFIX}.${n}" >> package.yaml
    cat ${TEMPPATH}/${n}_Iface.hs|perl -pe '$_=~s/module (\S+) where/module Data.Concrete.Autogen.\1 where/;'|perl -pe '$_=~s/import qualified (\S+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;'|perl -pe '$_=~s/import ([^\s\.]+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;'|perl -pe '$_=~s/import ([^\s\.]+)_Iface/import Data.Concrete.Autogen.\1_Iface as \1_Iface/g;' > src/Data/Concrete/Autogen/${n}_Iface.hs
    cat ${TEMPPATH}/${n}_Client.hs|perl -pe '$_=~s/module (\S+) where/module Data.Concrete.Autogen.\1 where/;'|perl -pe '$_=~s/import qualified (\S+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;'|perl -pe '$_=~s/import ([^\s\.]+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;'|perl -pe "\$_=~s/import ${n}/import Data.Concrete.Autogen.${n}/;" | perl -pe '$_=~s/import ([^\s\.]+)_Client/import Data.Concrete.Autogen.\1_Client as \1_Client/g;' > src/Data/Concrete/Autogen/${n}_Client.hs
    cat ${TEMPPATH}/${n}.hs|perl -pe '$_=~s/module (\S+) where/module Data.Concrete.Autogen.\1 where/;'|perl -pe '$_=~s/import qualified (\S+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;'|perl -pe '$_=~s/import ([^\s\.]+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;'|perl -pe '$_=~s/import qualified (\S+) as Iface/import qualified Data.Concrete.Autogen.\1 as Iface/;'|perl -pe '$_=~s/import qualified Service/import qualified Data.Concrete.Autogen.Service as Service/;' > src/Data/Concrete/Autogen/${n}.hs
done

mkdir -p src/Data/Concrete/Autogen/Lens

# Types, Consts
for x in ${TEMPPATH}/*_Types.hs
do
    n=`basename $x _Types.hs`
    tf="${n}_Types.hs"
    cf="${n}_Consts.hs"
    echo -e "    - ${PREFIX}.${n}_Types\n    - ${PREFIX}.${n}_Consts" >> package.yaml
    cat ${TEMPPATH}/${tf}|perl -pe '$_=~s/module (\S+) where/module Data.Concrete.Autogen.\1 where/;'|perl -pe '$_=~s/import qualified (\S+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;'|perl -pe '$_=~s/import ([^\s\.]+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;' > src/Data/Concrete/Autogen/${tf}
    cat ${TEMPPATH}/${cf}|perl -pe '$_=~s/module (\S+) where/module Data.Concrete.Autogen.\1 where/;'|perl -pe '$_=~s/import qualified (\S+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;'|perl -pe '$_=~s/import ([^\s\.]+)_Types/import Data.Concrete.Autogen.\1_Types as \1_Types/g;' > src/Data/Concrete/Autogen/${cf}
    for t in `cat $x |perl -ne 'if($_=~/^data (\S+)/){ print $1."\n"; }'`
    do
	echo -e "    - ${PREFIX}.Lens.${t}" >> package.yaml
	echo -e "{-# LANGUAGE TemplateHaskell #-}\nmodule Data.Concrete.Autogen.Lens.${t} where\n\nimport Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))\nimport Data.Concrete.Autogen.${n}_Types\n" > src/Data/Concrete/Autogen/Lens/${t}.hs
	echo -e "makeLensesWith (classyRules_ & lensField .~ mappingNamer (\\\\f -> [\"c\" ++ dropWhile (\\\\c -> c /= '_') f])) ''${t}" >> src/Data/Concrete/Autogen/Lens/${t}.hs
    done
done



# Remove temporary directory
rm -rf ${TEMPPATH}
