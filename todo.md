# A Fazer:
## Realizar o link entre a busca de API com a barra de busca:
Dentro do arquivo "search_player.dart", na linha 19 há um appBar, onde deve enviar o que for digitado para "API.dart". A lista foi configurada para
receber no máximo 5 nomes, e também pode retornar um erro se tentar buscar com menos de 3 caracteres. Idealmente é pra atualizar comforme digital um nome 
como uma lista de preview. AccountId é o que será usado para buscar a conta e os dados do jogador.
- No exercício da lista de filmes tem um exemplo de como pode ser feito, mas eu tava cansado de mais pra conseguir entender.

## Fazer a página de status
A página não foi feita ainda. A ideia é fazer uma tabela simples com os dados dos jogadores (vide https://na.wows-numbers.com/player/1015198915,Rafacar/).

## Documentação da API da Wargaming
Toda documentação se encontra aqui: https://developers.wargaming.net/?language=en
Não esquecer que a lista deve ser pega do World of Warships.
Se pedir o "Application ID", ele se econtra no API.dart, atráves de lá da pra fazer todo o parse de JSON tambem.



