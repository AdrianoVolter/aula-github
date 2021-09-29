#!/usr/bin/env bash

# Opçoes

editor="nano"

# Variaveis

dia_de_hoje=$( date +'%d/%m/%y' )

header="#!/usr/bin/env bash
# ------------------------------------------------------
# Script    :
# Descrição :
# Versão    : 0.1
# Autor     : Adriano Jose Volter <adriano.j.volter@hotmail.com>
# Data      : $dia_de_hoje
# Licença   :
#------------------------------------------------------
# Uso :
#------------------------------------------------------
"

# Testar se usuario passou o numero certo de 
# argumentos... (1 argumento)

[[ $# -ne 1 ]] && echo "Epa! Eu preciso de *um* nome de arquivo!" && exit 1

# Testar se arquivo ja existe...

[[ -f $1 ]] && echo "Epa! Arquivo ja existe! Saindo!" && exit 1

echo "$header" > $1
chmod +x $1
nano $1
