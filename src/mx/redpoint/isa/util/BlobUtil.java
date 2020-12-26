package mx.redpoint.isa.util;

import java.sql.Blob;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

//
// clase para manejo de los archivos para diferentes usos
//

public class BlobUtil {
	public static Blob partFile2Blob(CommonsMultipartFile partFile) {
		Blob blob = null;
		try {
			byte[] fileContent = partFile.getBytes();
			blob = new SerialBlob(fileContent);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return blob;
	}
}
