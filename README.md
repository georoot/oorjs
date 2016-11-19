# oorjs

`oorjs` is a simple library to maintain environment variables in development cycle. It is also able to differentiate between `development` and `production` environment based on presence of `json profile` file.

### Usage

A simple use case for this library would be

```
require('oorjs')('.env',function(flag){
  console.log("KEY :"+process.env.key);
});
```

where `.env` file is a json file that contains profile for the environment. The second callback function has a flag set to `true` if production environment is in `development`.

### Creating a profile

`oorjs` can use multiple separate profile that can be selected at runtime. A sample json file is

```
{
	"Profile 1": {
		"key": "12sdf3",
		"server": "8723"
	},
	"Profile 2": {
		"key": "123",
		"server": "8723"
	}
}
```

### What changes to make in production environment

None whatsoever. If the environment file in this case `.env` file is missing, it automatically assumes running in production environment. All you are left with is to set production variables and you are done. Remember the local environment file that stores all the profiles should be added in `.gitignore` before pushing the codes.