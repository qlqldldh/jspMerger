package com.mylibrary.book.admin.service.AdmDirInsert;

public class getChosung {
	public String chosung(String title) {
	        char b =title.charAt(0);
	        String chosung = null;
	        int first = (b - 44032 ) / ( 21 * 28 );
	         switch(first){
	             case 0:
	             case 1:
	                 chosung="ㄱ";
	                 break;
	             case 2:
	                 chosung="ㄴ";
	                 break;
	             case 3:
	             case 4:
	                 chosung="ㄷ";
	                 break;
	             case 5:
	                 chosung="ㄹ";
	                 break;
	             case 6:
	                 chosung="ㅁ";
	                 break;
	             case 7:
	             case 8:
	                 chosung="ㅂ";
	                 break;
	             case 9:
	             case 10:
	                 chosung="ㅅ";
	                 break;
	             case 11:
	                 chosung="ㅇ";
	                 break;
	             case 12:
	             case 13:
	                 chosung="ㅈ";
	                 break;
	             case 14:
	                 chosung="ㅊ";
	                 break;
	             case 15:
	                 chosung="ㅋ";
	                 break;
	             case 16:
	                 chosung="ㅌ";
	                 break;
	             case 17:
	                 chosung="ㅍ";
	                 break;
	             case 18:
	                 chosung="ㅎ";
	                 break;
	             default:
	            	 chosung=Character.toString(b);
	         }     
	      return chosung;
	}
}
