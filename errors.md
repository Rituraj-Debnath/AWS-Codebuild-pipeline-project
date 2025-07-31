If this error occurs : 

[Container] 2025/07/31 05:37:55.831840 Phase context status code: Decrypted Variables Error Message: AccessDeniedException: User: arn:aws:sts::585853585762:assumed-role/codebuild-simple-python-application-demo-service-role/AWSCodeBuild-da2b1017-86f5-4f7e-847b-e6a4a5c988b4 is not authorized to perform: ssm:GetParameters on resource: arn:aws:ssm:ap-south-1:585853585762:parameter/python-app/docker-creds/username because no identity-based policy allows the ssm:GetParameters action

means codebuild does'nt have iam permission to access and decrypt ssm parameter..jsut add an iam role/policy to codebuild : ssm-getparameter.

2. by default codebuild doesnt allow to build docker img at build stage ?
so we have to enable this : " Enable this flag if you want to build Docker images or want your builds to get elevated privileges"  in the environment section in codebuild project.

3. 
