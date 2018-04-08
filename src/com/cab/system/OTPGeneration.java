package com.cab.system;

import java.security.SecureRandom;
import java.util.Random;
 
public class OTPGeneration {
	
    public static String generatePassword() {
        String chars = "1234567890";

        final int PW_LENGTH = 4;
        Random rnd = new SecureRandom();
        StringBuilder pass = new StringBuilder();
        for (int i = 0; i < PW_LENGTH; i++)
            pass.append(chars.charAt(rnd.nextInt(chars.length())));
        return pass.toString();
    }
        }