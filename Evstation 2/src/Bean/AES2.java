package Bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

public class AES2 {

    
	
	 private SecretKey key;
	    private final int KEY_SIZE = 128;
	    private final int T_LEN = 128;
	    private Cipher encryptionCipher;

	 
	    
	    
	  /*  private static String method(String filePath)
	    {
	 
	        // Declaring object of StringBuilder class
	        StringBuilder builder = new StringBuilder();
	 
	        // try block to check for exceptions where
	        // object of BufferedReader class us created
	        // to read filepath
	        try (BufferedReader buffer = new BufferedReader(
	                 new FileReader(filePath))) {
	 
	            String str;
	 
	            // Condition check via buffer.readLine() method
	            // holding true upto that the while loop runs
	            while ((str = buffer.readLine()) != null) {
	 
	                builder.append(str).append("\n");
	            }
	        }
	 
	        // Catch block to handle the exceptions
	        catch (IOException e) {
	 
	            // Print the line number here exception occurred
	            // using printStackTrace() method
	            e.printStackTrace();
	        }
	 
	        // Returning a string
	        return builder.toString();
	    }
	 
	    // Method 2
	    */
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    public void init() throws Exception {
	        KeyGenerator generator = KeyGenerator.getInstance("AES");
	        generator.init(KEY_SIZE);
	        key = generator.generateKey();
	    }

	    public String encrypt(String message) throws Exception {
	        byte[] messageInBytes = message.getBytes();
	        encryptionCipher = Cipher.getInstance("AES/GCM/NoPadding");
	        encryptionCipher.init(Cipher.ENCRYPT_MODE, key);
	        byte[] encryptedBytes = encryptionCipher.doFinal(messageInBytes);
	        return encode(encryptedBytes);
	    }

	    public String decrypt(String content) throws Exception {
	        byte[] messageInBytes = decode(content);
	        Cipher decryptionCipher = Cipher.getInstance("AES/GCM/NoPadding");
	        GCMParameterSpec spec = new GCMParameterSpec(T_LEN, encryptionCipher.getIV());
	        decryptionCipher.init(Cipher.DECRYPT_MODE, key, spec);
	        byte[] decryptedBytes = decryptionCipher.doFinal(messageInBytes);
	        return new String(decryptedBytes);
	    }

	    private String encode(byte[] data) {
	        return Base64.getEncoder().encodeToString(data);
	    }

	    private byte[] decode(String data) {
	        return Base64.getDecoder().decode((data.trim()));
	    }

	    public static void main(String[] args) {
	        try {
	            AES2 aes = new AES2();
	            aes.init();
	            String encryptedMessage = aes.encrypt("javaaaa");
	         
	            System.out.println("Encrypted Message :"+encryptedMessage);
	          
	      
	            
	            
	            
	            
	            
	            
	            
	            
	            
	           /*file created and write*/
	        File file=new File("C:\\Users\\Public\\hiu.txt");
	        boolean present=file.exists();
	        if (present==false)
	        
	        try {
	        boolean created=file.createNewFile();
	      
	      System.out.println("created");
	     FileWriter writer=new FileWriter(file);
	        writer.write(encryptedMessage);
	       
	        
	        writer.flush();
	        writer.close();
	        
	      /*  
	        FileReader fileReader= new FileReader(file);
	        int i;
	        while((i= fileReader.read())!= -1)
	        {   
	        
	        System.out.println((char)i);*/
	       
	     
	     /*   String s=String.valueOf((char)i);
	        
	        System.out.println(s);
	        
	        String decryptedMessage = aes.decrypt(s);
*/
	        
	     /*   File reading*/
	        FileInputStream fis = new FileInputStream(file);
	        byte[] buffer = new byte[10];
	        StringBuilder sb = new StringBuilder();
	        while (fis.read(buffer) != -1) {
	        	sb.append(new String(buffer));
	        	buffer = new byte[10];
	        }
	        fis.close();

	        String content = sb.toString();   
	        
	        System.out.println(content);
	        
	        String decryptedMessage = aes.decrypt(content);

	        System.out.println(decryptedMessage);
	        
	        
	        
	        
	        
	     
	   /*     BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\Public\\Libraries\\how.txt"));
	        StringBuilder stringBuilder = new StringBuilder();
	        String line = null;
	        String ls = System.getProperty("line.separator");
	        while ((line = reader.readLine()) != null) {
	        	stringBuilder.append(line);
	        	stringBuilder.append(ls);
	        }
	        // delete the last new line separator
	        stringBuilder.deleteCharAt(stringBuilder.length() - 1);
	        reader.close();

	        String content = stringBuilder.toString();
	      
	        System.out.println("fhvjhg"+content);
	        
	        String decryptedMessage = aes.decrypt(content);

	        System.out.println(decryptedMessage);
	        */
	        
  /*String filePath = "C:\\Users\\Public\\Libraries\\how.txt";
	        
	        // Calling the Method 1 to
	        // read file to a string
	        System.out.println("jghufhjhj"+ method(filePath));
	      
	        
	        
	        String decryptedMessage = aes.decrypt(encryptedMessage);
	        
	        System.out.println(decryptedMessage);
	        */
	        
	        
	        }catch(Exception e) {
	        e.printStackTrace();
	        	
	       }
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        } catch (Exception ignored) {
	        }
	    }
	}