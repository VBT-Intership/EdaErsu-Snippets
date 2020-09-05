// Example:
	
	



    "Print to console": {
		"scope": "dart",
		"prefix": "eda",
		"body": [
			"print('$1');",
			
		],
		"description": "print a string"
	},
	"Create a constructor": {
		"scope": "dart",
		"prefix": "cons",
		"body": [
			" User(this.$1, this.$2, this.$3);",
			
		],
		"description": "create a constructor"
	},
	"create a get set": {
		"scope": "dart",
		"prefix": "getset",
		"body": [
			"$2 get get$1 {",
				"return $1;",
			"}",
			"",
			"void set$1($2 $1) {",
				"this.$1 = $1;",
			"}",
			
		],
		"description": "create a get and set method"
	},
	"get json data with http": {
		"scope": "dart",
		"prefix": "getdata",
		"body": [
			"Future<List<String>> getdata() async {",
			"    http.Response response;",
			"    List<$1> mylist = new List<$1>();",
			"    response = await http.get(",
			"        Uri.encodeFull(''),",
			"        headers: {'Accept': 'application/json'}",
			"    );",
			"",
			"    var jsondata = json.decode(response.body);",
			"    print(response.body);",
			"    for (var u in jsondata) {",
			"        mylist.add(new $1(u[''], u[''], u['']));",
			"    }",
			"}",
			
		],
		"description": "get json data with http"
	},
