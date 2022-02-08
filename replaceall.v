import cli { Command }
import os

fn main() {
	mut cmd := Command{
		name: 'replaceall'
		description: 'small search-and-replace application'
		version: '1.0.0'
		usage: '<name> <search> <replace> <path1> <path2> <path3> ...'
		execute: cmd_replaceall_fn
		required_args: 3
	}

	cmd.setup()
	cmd.parse(os.args)
}

fn replaceall(search string, replace string, path string) {
	os.system('find $path -type f | xargs sed -i "s/$search/$replace/"')
}

fn cmd_replaceall_fn(cmd Command) ? {
	search := string(cmd.args[0])
	replace := string(cmd.args[1])

	for i in 2 .. cmd.args.len {
		path := string(cmd.args[i])
		replaceall(search, replace, path)
	}
}
