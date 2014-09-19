package com.rest;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;


@Path("/ipadGuiService")
public class IpadAndGuiService
{
	@Context
	private HttpServletRequest req;

	private static final String pageToLaod = null;
	private static final String pageLoaded = null;
	
	
	@GET
	@Path("/getHtml")
	public String loadHtml(@QueryParam ("fileName") String fileName) throws IOException{
		
		FileReader filer;
		try
		{
			String filePath = "./WebContent/"+fileName+".jsp";
			BufferedReader br = new BufferedReader(new FileReader(filePath));
			StringBuilder sb = new StringBuilder();
		    try {
		        
		        String line = br.readLine();

		        while (line != null) {
		            sb.append(line);
		            sb.append("\n");
		            line = br.readLine();
		        }
		    } finally {
		        br.close();
		    }
		    return sb.toString();
		}
		catch( FileNotFoundException e )
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		String path = req.getContextPath();
		return null;
		
	}
	
	
}
