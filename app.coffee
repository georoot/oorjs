chalk = require 'chalk'
jsonfile = require 'jsonfile'
inquirer = require 'inquirer'


activate = (file_name,clbFunction)->
	jsonfile.readFile file_name,(err,obj)->
		if(err)
			clbFunction false
			return
		choices = []
		for k, v of obj
			choices.push {name:k}
		inquirer.prompt {
			type: 'checkbox',
			message: 'Select Profile',
			name: 'profile',
			choices
		}
		.then (answers)->
			for i in answers.profile
				profile_var = obj[i]
				for k, v of profile_var
					process.env[k] = v
			clbFunction true

				
module.exports = activate