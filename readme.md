So writing a buildspec.yaml file is not that hard...no need to copy things from gpt or any video coz self learning at own is best....

so as i have some little experience with Github actions yaml file..its very easy to write a buildspec...

my goal was to everytime new push is done it will make a new docker img and push to dockerhub or any image registry ...so first whats the import things here : 

How a user would do this things : 

1. login to dockerhub, just like a user does , command is :  - echo "dckr_pat_SuMzpD_the_PAT_from_dockerhub" | docker login -u "dockerhub_username" --password-stdin 
   change the username and PAT as usual. and same codebuild will do in pre-build stage.

2. Creating a docker image : command is   docker build -t "docker.io/dockerhub_username/app_name:latest" .  , same for codebuild too..just "" are added for codebuild command in build phase.

3.  Pushing to dockerhub : command is     docker push "docker.io/dockerhub_username/app_name:latest"  , same "" added for codebuild.

4.  thats it ...now to do it securely using best practices i've used SSM parameter store where just stored the values of github username,access token and used the path in the codebuild builspec.yaml file...THats it . simple .
