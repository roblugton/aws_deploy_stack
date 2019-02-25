AWS Deploy Stack
----------------

A script that wraps `aws cloudformation deploy` and allows you to pass in parameters and tags as yaml files and a dry-run tag

e.g.

```bash
aws_deploy_stack.sh \
    --template template_file.yaml \
    --parameters parameters_file.yaml \
    --tags tags_file.yaml \
    --stackname test_stack \
    --dry-run
```