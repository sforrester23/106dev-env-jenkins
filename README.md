# new repository to play around with Jenkins, trying to connect it to GitHub so that every time a commit is made, it triggers a build (not actually doing the build in this section)

## Step by Step guide:

- make sure Jenkins is running:
  1. vagrant up
  2. install nginx:

          sudo apt-get update
          sudo apt-get install nginx -y
          sudo systemctl start nginx

  3. install java:

          sudo apt-get update
          sudo apt install openjdk-8-jdk -y

  4. install nodejs:

          sudo apt-get install curl -y
          curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
          sudo apt-get install nodejs -y

  5. install jenkins:

          wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
          sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
          sudo apt update
          sudo apt install jenkins -y
  To check that jenkins is running:
          systemctl status jenkins
