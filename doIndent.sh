#! /bin/bash

which latexindent > /dev/null 2>&1
if [ "$?" != "0" ]
then
  echo "ERROR : latexindent not found"
  exit 1
fi

for fin in $*
do
  [ -f $fin ] || continue
  echo "* $fin"
  #latexindent -w -l localIndent.yaml $fin > /dev/null 
  latexindent -w -y="defaultIndent:'  '" $fin > /dev/null 
done

