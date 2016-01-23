package com.geekang.init;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class Init {
	
	
	public static List<String[]> list = new ArrayList<String[]>();
	public static String[] fields = {};
	
	static int fieldsNum;

	public static List<String[]> InitLogFile(String filePath) {

		BufferedReader br;
		String byteread = null;
		String[] fieldsTEMP = null;
		
		String[] entryTEMP = null;
		boolean isEntry = false;

		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(
					filePath)));

			list.clear();
			
			while ((byteread = br.readLine()) != null) {
				if(byteread.startsWith("#Fields:")){
					fieldsTEMP = byteread.split(" ");
					fieldsNum = fieldsTEMP.length - 1;
					
					fields = new String[fieldsNum];
					System.arraycopy(fieldsTEMP, 1, fields, 0, fieldsNum);
					list.add(fields);
					isEntry = true;
					continue;
				}
				if(isEntry){
					entryTEMP = byteread.split(" ");
					list.add(entryTEMP);
				}
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;

	}

}
