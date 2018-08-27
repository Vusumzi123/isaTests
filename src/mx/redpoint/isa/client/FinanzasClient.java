package mx.redpoint.isa.client;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.logging.Logger;

import org.codehaus.jackson.map.ObjectMapper;

import mx.redpoint.isa.bean.Finanzas;

public class FinanzasClient {
	private final static Logger LOGGER = Logger.getLogger(FinanzasClient.class.getName());
	
	public static final Finanzas[] getFinanzasClient() {
		HttpURLConnection conn = null;
		Finanzas[] obj = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			URL url = new URL("https://4goihg4vob.execute-api.us-west-2.amazonaws.com/finanzasIE/finanzas");
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
				while ((output = br.readLine()) != null) {
					json = json + output;
				}
				
				LOGGER.info("consulta a servicio exitosa");
				obj = mapper.readValue(json, Finanzas[].class);
				
				
		}catch (Exception e) {
			LOGGER.warning(e.getLocalizedMessage());
		}finally{
			conn.disconnect();
		}
		
		return obj;
	}
}
