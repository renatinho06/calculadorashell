echo "Bem vindo a calculadora do Davi e do Renato"
echo "==========================================="
echo ""

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

echo "Escolha uma operação:"
echo "1. Soma"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
echo "5. Raiz Quadrada"
echo "6. Potência"
echo "7. Sair "
read -p "Digite a opção desejada: " escolha

soma() {
  resultado=$((num1 + num2))
}

subtracao() {
  resultado=$((num1 - num2))
}

multiplicacao() {
  resultado=$((num1 * num2))
}

divisao() {
  if [ $num2 -eq 0 ]; then
    echo "Erro: Divisão por zero não é permitida."
    exit 1
  fi
  resultado=$(echo "scale=2; $num1 / $num2" | bc)
}

raiz_quadrada() {
  resultado=$(echo "scale=2; sqrt($num1)" | bc)
}

potencia() {
  resultado=$((num1 ** num2))
}


case $escolha in
  1)
    soma
    ;;
  2)
    subtracao
    ;;
  3)
    multiplicacao
    ;;
  4)
    divisao
    ;;
  5)
    raiz_quadrada
    ;;
  6)
    potencia
    ;;
  7)
    exit
    ;;
  *)
    echo "Opção inválida."
    exit 1
    ;;
esac

echo "O resultado da Operação é: $resultado"
