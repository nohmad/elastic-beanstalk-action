# Elastic Beanstalk Action

This action makes the command `eb` in the `awsebcli` package available for you to deploy to Amazon Elastic Beanstalk platform.

```yml
  - name: Deploy to Elastic Beanstalk
    uses: nohmad/elastic-beanstalk-action@master
    with:
      sub-command: deploy
      environment: ${{ github.event.inputs.stage }}
      optional-args: '--nohang'
      aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
      aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

# Inputs

### sub-command

sub-command to perform. `deploy` by default.

### environment

**Required** Elastic Beanstalk environment.

### optional-args

`--nohang` is usually recommended if you want to save the billing time.

### aws-access-key-id

**Required** `secrets.AWS_ACCESS_KEY_ID`

### aws-secret-access-key

**Required** `secrets.AWS_SECRET_ACCESS_KEY`

# Outputs

None

# Author

GY Noh <nohmad@gmail.com>

# LICENSE

MIT License
