package mx.redpoint.isa.client;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.codehaus.jackson.map.ObjectMapper;

import mx.redpoint.isa.bean.Principalvecinos;

public class PrincipalvecinosClient {
	
	public static final Principalvecinos getPrincipalvecinoClient() {
		HttpURLConnection conn = null;
		Principalvecinos obj = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			URL url = new URL("https://4goihg4vob.execute-api.us-west-2.amazonaws.com/principalvecs/principalvec");
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}
			
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

				String output;
				String json = "";
				System.out.println("Output from Server .... \n");
				while ((output = br.readLine()) != null) {
					json = json + output;
				}
				
				obj = mapper.readValue(json, Principalvecinos.class);
				
				
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			conn.disconnect();
		}
		
		return obj;
	}
	
	
}
