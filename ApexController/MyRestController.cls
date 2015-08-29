/* MyRestController V1 */
public class MyRestController {
	//Use @AuraEnabled to enable client- and server-side access to the method
    @AuraEnabled
    public static Response makeCallout(String endPoint,String method) {
       
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod(method);
        req.setTimeout(120000);
        Http http = new Http();
        
        HTTPResponse res = http.send(req);
        Response resp = (Response) JSON.deserialize(res.getBody(), Response.class);
        return resp;
    }
        
    public class Response{//Inner Class
        @AuraEnabled
        public String inspirationalMessage { get; set; }
    }
}