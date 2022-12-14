# Signal Reminder

Small application to send reminders to a Signal group chat using the Signal CLI

## How to run
Yes this is going to be a terrible `how to run` because I'm lazy rn.

* Push the [Signal API docker image](https://github.com/bbernhard/signal-cli-rest-api) to ECR
* Create a PEM KeyPair in the EC2 console
* Either manually pull the image on your EC2 instance or uncomment and edit the 2 lines in the startup script under UserData in the CloudFormation template
* Go through the [Getting Started](https://github.com/bbernhard/signal-cli-rest-api) section OR...
* ...start the Signal API ```$ sudo docker run -d --name signal-api --restart=always -p 8080:8080 \
      -v $HOME/.local/share/signal-cli:/home/.local/share/signal-cli \
      -e 'MODE=native' bbernhard/signal-cli-rest-api``` and register your phone number
* Deploy the CloudFormation template in the CloudFormation console
* SSH into your EC2 instance, e.g. `ssh -i "myPrivateKey.pem" ec2-user@ec2-12-345-67-890.us-east-1.compute.amazonaws.com`
* `chmod +x reminder.sh`
  * Actually I was too lazy to include this in the startup script which I should really do. So now you have to manually add it.
* Run `crontab -e` and edit with `0 1 * * * /home/ec2-user/reminder.sh
0 0 * * Fri [ $(expr $(date +%W) % 2) -eq 1 ] && /home/ec2-user/reminder.sh`
  * **NOTE:** default crontab behavior is Vim. If you don't like Vim you can also nano into it by setting
    * `nano ~/.bash_profile `
    * `export VISUAL="nano"`
    * `source ~/.bash_profile `
    * .. and then running crontab -e should open it with nano
