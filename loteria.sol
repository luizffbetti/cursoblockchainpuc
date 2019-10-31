pragma solidity 0.5.12;

contract Loteria10Apostadores {
    address[10] participantes;
    uint8 participantesCount = 0;
    uint randNonce = 0;

    function join() public pagamento {
        require(msg.value == 0.1 ether, "Deve enviar 0.1 ether");
        require(participantesCount < 10, "Limite do usuario alcancado");
        require(jaParticipou(msg.sender) == false, "Usuario já participa");
        participantes[participantsCount] = msg.sender;
        participantesCount++;
        if (participantesCount == 10) {
            selectGanhador();
        }
    }
    
    function jaParticipou(address _participante) private view returns(bool) {
        bool containsParticipante = false;
        for(uint i = 0; i < 10; i++) {
            if (participantes[i] == _participante) {
                containsParticipante = true;
            }
        }
        return containsParticipante;
    }
    
    function selectGanhador() private returns(address) {
        require(participantesCount == 10, "Esperando mais usuários");
        address winner = participantes[randomNumber()];
        winner.transfer(address(this).balance);
        delete participantes;
        participantesCount = 0;
        return winner;
    }
    
    function randomNumber() private returns(uint) {
        uint rand = uint(keccak256(abi.encodePacked(now, msg.sender, randNonce))) % 10;
        randNonce++;
        return rand;
    }
        
}
