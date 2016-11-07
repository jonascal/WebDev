<?php
$link = mysqli_connect('localhost','root','');
if (!$link) {
    die('Não foi possível conectar: ' . mysqli_error($link));
}
echo 'Conexão bem sucedida';

mysqli_select_db($link, "podruto");

$resultado = mysqli_query($link, "SELECT * FROM produtos");

while ($linha = mysqli_fetch_assoc($resultado)){
	echo "<a href='produto.php?p=$linha[ID]'>";	
	echo "Nome: $linha[nome]";
	echo "Valor: $linha[valor]";
	echo "<br>";
	echo "</a>";

}

?>
