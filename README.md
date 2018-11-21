# DRWAPNs-vapor
<p align="center">
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-4.1-brightgreen.svg" alt="Swift 4.1">
    </a>
</p>

### API Request

```applescript
POST /notification HTTP/1.1
Content-Type: application/json

"deviceIds": ["asijealskdjfijdlfkdfialdjsflksadnglakjsdfleaskdjflkjsafldkjfkls",
    			  "a30b5ebadfasdfasdflkj;asldjflka;fj7f3edsadfasfasfafsfsadf0"],
	"title": "Is Title",
    "content": "Content here",
    "customPayload": {
    	"custom1": "custom1",
    	"custom2": 4,
    	"custom3": ["index0", "index1"]
    }
```

### APNs Setting

Setting in ``Parameter.swift``
