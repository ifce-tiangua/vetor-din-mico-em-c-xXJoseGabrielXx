echo "Testando (2)..."
echo

output=$(./a.out < ./testes/input2.txt)
expected_output="[193, 652, 111, 208, 216, 236, 91, 691, 394, 175, 708, 413, 610, 31, 783, 113, 962, 910, 916, 315, 10, 740, 58, 915, 246, 661, 793, 277, 374, 482, 395, 877, 442, 457, 445, 496, 187, 509, 55, 659, 164, 375, 131, 979, 142, 619, 68, 50, 881, 642, 221, 700, 183, 905, 52, 335, 820, 246, 533, 704, 498, 82, 890, 592, 985, 341, 240, 72, 562, 397, 642, 802, 170, 525, 659, 300, 309, 151, 395, 20, 465, 675, 975, 389, 176, 7, 220, 133, 64, 862, 707, 96, 597, 490, 72, 731, 39, 709, 298, 999]"

if [ $? -eq 0 ] ; then
  echo "Running ok: Program exited zero"
else
  echo "Fail on running: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: A saida esperada esta correta"
else
  echo "Era esperado '$expected_output' mas o programa retornou: $output"
  exit 1
fi

echo
echo "Teste 2 realizado com sucesso"

exit 0