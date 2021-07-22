public class TestingVAT {

    public String strCountryCode {get;set;}
    public String strVATNum {get;set;}
    public String countryCode {get;set;}
    public String vatNumber {get;set;}
    public Date requestDate {get;set;}
    public Boolean valid {get;set;}
    public String name {get;set;}
    public String address {get;set;}

    public TestingVAT() {
        strCountryCode = 'RO';
        strVATNum = '9311280';
    }
    
    public void checkVAT() {
        ecEuropaEuTaxudViesServicesCheckva.checkVatResponse_element res = new ecEuropaEuTaxudViesServicesCheckva.checkVatResponse_element();
        ecEuropaEuTaxudViesServicesCheckva.checkVatPort obj = new ecEuropaEuTaxudViesServicesCheckva.checkVatPort();
        res = obj.checkVat(strCountryCode, strVATNum);
        countryCode = res.countryCode;
        vatNumber = res.vatNumber;
        requestDate = res.requestDate;
        valid = res.valid;
        name = res.name;
        address = res.address;
    }
    
}