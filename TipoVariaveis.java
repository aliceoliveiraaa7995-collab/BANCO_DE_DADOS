public class TipoVariaveis {
    public static void main (String[] args) throws Exception {

         // Nível 1 (Tipos inteiros), número 1
        int a = 5;
        System.out.println("A: " + a);

        int b = 3;
        System.out.println("B: " + b);
        
        // Nível 1, número 2
        int soma = a + b;
        System.out.println("Soma: " + soma);
        
        // Nível 1, número 3
        int idade = 16;
        System.out.println("Idade: " + idade);
        
        // Nível 1, número 4
       int dobro = a * 2;
       System.out.println("Dobro: " + dobro);

       // Nível 2 (Tipos reais), número 5
       double decimal = 1.2;
       System.out.println("Decimal: " + decimal);

       // Nível 2, número 6
       double media = (a + b) / 2;
       System.out.println("Media: " + media);

       // Nível 2, número 7
       double valorProduto = 20;
       int quantidade = 5;
       System.out.println("Total da compra: R$ " + valorProduto * quantidade);

       // Nível 3 (Tipo texto), número 8
       String nome = "Alice";
       System.out.println("Seja bem vindo(a) " + nome);
       
       // Nível  3, número 9
       String local = "Salvador";
       System.out.println("Cidade: " + local);
       
       // Nível 4(Tipo lógico), número 10
        boolean aux = true;
        System.out.println("Exibir: " + aux);

        // Nível 4, número 11
        boolean help = false;
        System.out.println("Exibir 2: " + help);

        // Nível 5 (Tipo caractere), número 12
        char genero = 'F';
        System.out.println("Genero: " + genero);

        // Nível 5, número 13
        char inicial = 'A';
        System.out.println("Inicial: " + inicial);

        // Nível 6 (Misturando tipos), número 14
        double altura = 1.60;
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
        System.out.println("Altura: " + altura);

        // Nível 6, número 15
        double AV1 = 9;
        double AV2 = 7;
        double mediaProva = (AV1 + AV2) / 2;
        System.out.println("Nome: " + nome);
        System.out.println("AV1: " + AV1);
        System.out.println("AV2: " + AV2);
        System.out.println("Média: " + mediaProva);

        // Desafio final, número 16
        String nomeProduto = "Celular";
        System.out.println("Nome do produto: " + nomeProduto);
        System.out.println("Preço: R$" + valorProduto);
        System.out.println("Quantidade: " + quantidade);
        System.out.println("Total: R$" + valorProduto * quantidade);
    }
}
