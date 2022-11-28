import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Scanner;


public class Main {
    public String encrypt(String input) throws NoSuchAlgorithmException{
        //MessageDigest works with MD2, MD5, SHA-1, SHA-224, SHA-256
        //SHA-384 and SHA-512
        MessageDigest md = MessageDigest.getInstance("SHA-1");

        byte[] messageDigest = md.digest(input.getBytes());

        BigInteger bigInt = new BigInteger(1,messageDigest);

        return bigInt.toString(16);

    }

    public static void main(String[] args) throws NoSuchAlgorithmException{
        Main encryptor = new Main();

        String pass = "hola mundo";
        String hashedPass = "459567d3bde4418b7fe302ff9809c4b0befaf7dd";

        Scanner scanner = new Scanner(System.in);
        System.out.println("Password: \n");
        String userInput = scanner.nextLine();

        if(encryptor.encrypt(userInput).equals(hashedPass)){
            System.out.println(":)");
        } else
        {
            System.out.println(":(");
        }

    }
}
