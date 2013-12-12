# A mini todo command-line app

You can create, list and check tasks via this simple gem.

## Usage

```bash
# Create a new task belongs to a project
tdoo new -p today "Happy Coding!" 

# List all tasks you've created
tdoo list 

# List all tasks in today project
tdoo list -p today

# Complete the task 0 in today project
tdoo done -p today 0

# Complete and delete the task 0 in today project
tdoo done -d -p today 0

# For help
tdoo -h
```



## License

MIT