#!/usr/bin/env bash

# Testa se foi passado um argumento ...

msg="É preciso informar o nome de um comando válido!"

[[ $# -ne 1 ]] && echo $msg && exit 1


# Executa "help" para verificar se vai conseguir 
# mostrar a ajuda do comando (sucesso) ou não (erro)

help $1 &> /dev/null 

# Usar comando "test" para avaliar a expressão ...

[[ $? -eq 0 ]] && echo "E builtin!" || echo "Não é builtin!"


exit 0 
