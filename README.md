AWS Deploy Stack
----------------

A script that wraps `aws cloudformation deploy` and allows you to pass in parameters and tags as yaml files and a dry-run tag

e.g.

```bash
aws_deploy_stack.sh \
    --template template_file.yaml \
    --stackname test_stack \
    --parameters parameters_file.yaml \
    --tags tags_file.yaml \
    --dry-run
```

## Usage:
```b
aws_deploy_stack (-t|--template) <template file> (-s|--stackname) <stack name> [(-p|-params|--parameters) <parameters_file>] [(-a|--tags) <tags file>] [(-d|--dryrun)] [(-h|--help)]

    REQUIRED PARAMETERS:
        (-t|--template) <template file> - template file to deploy
        (-s|--stackname) <stack name> - name to use for the CFN stack
        
    OPTIONAL PARAMETERS:
        (-p|--params|--parameters) <parameters file> - template parameters
        (-a|--tags) <tags file> - CFN stack tags
        (-d|dryrun) - Generate the aws cloudformation deploy command but do not execute it 
        (-h|--help) - Display this help
```
