
 service MyService @(path: 'Myservice') {
 
    //defintion of the service
    //The implementation will be done in a JS file with same name equality
    function hello(name: String(32)) returns String;
    
}