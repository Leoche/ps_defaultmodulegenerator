#!/bin/bash

defaultname=ps_defaultmodulegenerator
defaultauthor='$author'
defaultnameUC=${defaultname^^${defaultname:0:1}}
echo Module generator
echo ----------------
echo 
echo Name of module \? \(currently $defaultname\)
read modulename
echo Author of module \?
read authorname
modulenameUC=${modulename^^${modulename:0:1}}

sed -i -e "s/$defaultname/$modulename/g" ./ps_defaultmodulegenerator/config.xml
sed -i -e "s/$defaultname/$modulename/g" ./ps_defaultmodulegenerator/views/templates/display.tpl
sed -i -e "s/$defaultname/$modulename/g" ./ps_defaultmodulegenerator/views/js/front.js
sed -i -e "s/$defaultname/$modulename/g" ./ps_defaultmodulegenerator/ps_defaultmodulegenerator.php

sed -i -e "s/$defaultnameUC/$modulenameUC/g" ./ps_defaultmodulegenerator/ps_defaultmodulegenerator.php

sed -i -e "s/$defaultauthor/$authorname/g" ./ps_defaultmodulegenerator/config.xml
sed -i -e "s/$defaultauthor/$authorname/g" ./ps_defaultmodulegenerator/ps_defaultmodulegenerator.php

mv ./ps_defaultmodulegenerator/ps_defaultmodulegenerator.php ./ps_defaultmodulegenerator/$modulename.php
mv ps_defaultmodulegenerator $modulename