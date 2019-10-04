pragma solidity 0.5.12;

contract Aluguel {


/*
como fazer comentário grande sem que o compilador traga para o arquivo, basta colocar o /* para abrir o comentário e o de baixo para fechar
*/

// vale apenas para uma linha de comentário 

string public locador;

string public locatario;

uint private valorDoAluguel;

uint constant prazoMaximodeLocacaoemMeses = 12;
//a escrita é sempre junta pois espaço é entendido como outra iformação podendo ser maiúscilo no meio


    constructor( string memory nomelocador, string memory nomelocatario, uint valor) public {
    locador = nomelocador;
    locatario = nomelocatario;
    valorDoAluguel = valor;
}
// parametros são as variaveis que voce colocou dentro da função e utiliza o simbolo = para atribuir o dado
// as chaves{} contém o contrato e as funções sempre
// as funções são escritas entre parenteses () sendo que mesmo vazias são obrigatórias

    function valor() public view returns (uint) {return valorDoAluguel;}
    
//a função acima permite tornar pública a função inicialmente privada    

    function simulamulta (uint mesesrestantes, uint multamaximaDoAluguel)
    {public view return (valormulta) 
    
}
}
