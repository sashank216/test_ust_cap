//defintion
service MyService @(path: 'MyService') {
    function greetings(name: String(20)) returns String;
    function total (num1: Int16, num2: Int16) returns Integer;
    
}