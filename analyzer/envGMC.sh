#!/bin/bash

#  $Id: envGMC.sh 268 2013-10-31 17:21:49Z tassielli $
#  $Author:  $
#  $Revision:  $
#
# modified for porting to FCCSW/Key4Hep by lavezzi (2020)


export PRJBASE="/its/home/iv41/workarea/FullIDEASim_superdev/DriftChamberPLUSVertex"
export PATH=$PRJBASE/analyzer/GMC:$PATH

# genfit2
export GENFIT2SYS=/cvmfs/sw.hsf.org/spackages/linux-centos7-x86_64/gcc-8.3.0/genfit-02-00-00-ymoc6wcmzk2lyf637vkxylbyunhwcsfo
export LD_LIBRARY_PATH=${GENFIT2SYS}/lib64:${LD_LIBRARY_PATH}
export ROOT_INCLUDE_PATH=${ROOT_INCLUDE_PATH}:${GENFIT2SYS}/include
echo "GENFIT2SYS is set to "${GENFIT2SYS}

# eigen


# rome
export ROMESYS=/its/home/iv41/workarea/FullIDEASim_superdev/LOCAL/ROME/rome
export PATH=$ROMESYS/bin:${PATH}
export LIBROME=yes
echo "ROME is set to "${ROMESYS}

#GMC
export GMCDIR=${PRJBASE}/analyzer/GMC
export LD_LIBRARY_PATH=${GMCDIR}/obj:${LD_LIBRARY_PATH}
echo "GMCDIR is set to "${GMCDIR}

#root
export ROOTSYS=/cvmfs/sw.hsf.org/spackages/linux-centos7-x86_64/gcc-8.3.0/root-6.24.00-u7xb6dwwdgx7v3xbdg37tsfvdufauaef
export ROT

#zlib
for path in ${CMAKE_PREFIX_PATH//:/ }; do
    if  grep -q 'zlib' <<< "$path"  ; then
    export ZLIB_DIR=$path/lib
    fi
    if  grep -q 'podio' <<< "$path"  ; then                       
	export PODIODIR=$path                        
    fi
    if  grep -q 'edm4hep' <<< "$path"  ; then                       
	export EDMDIR=$path                        
    fi
    if grep -q 'eigen' <<< "$path" ; then
        export EIGEN3SYS=$path
    fi    
done
echo "ZLIB_DIR is set to "${ZLIB_DIR}
echo "EIGEN3SYS is set to "${EIGEN3SYS}
echo "PODIODIR is set to "${PODIODIR}
echo "EDMDIR is set to "${EDMDIR}


export G4WORKDIR=$SIM_INSTAL_DIR
export LD_LIBRARY_PATH=${G4WORKDIR}/lib:${LD_LIBRARY_PATH}
export ROOT_INCLUDE_PATH=${ROOT_INCLUDE_PATH}:${EIGEN3SYS}/include/eigen3

