<p align="center">
  <img src="./images/logo2.png">
</p>



| pipeline name   | Last build status  |
|---|---|
|Build-first-image   | [![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=containers101&repoName=react-starter-kit&branch=master&pipelineName=Build-first-image&accountName=containers101&type=cf-2)]( https://g.codefresh.io/repositories/containers101/react-starter-kit/builds?filter=trigger:build;branch:master;service:587fb677009ed10100def2d2~Build-first-image)  |
|Build-codefresh-yml   | [![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=containers101&repoName=react-starter-kit&branch=master&pipelineName=Build-codefresh-yml&accountName=containers101&type=cf-2)]( https://g.codefresh.io/repositories/containers101/react-starter-kit/builds?filter=trigger:build;branch:master;service:587f93d2bb28d1010059ed16~Build-codefresh-yml)  |

## Setup your first service using [Codefresh](https://codefresh.io/).

### Step-by-step tutorial:
#### 1. Fork this repo.
<p align="center">
  <img src="./images/fork.png" width="500">
</p>

#### 2. Login into codefresh using your github account.

<p align="center">
  <img src="./images/signup.png" width="500">
</p>

#### 3. Add your first service and build it.

<p align="center">
  <b>Start by adding new service</b><br>
  <img src="./images/add.png" width="500">
</p>


<p align="center">
  <b>Select the repo you just forked and click next</b><br>
  <img src="./images/next.png" width="500">
</p>


<p align="center">
  <b>Select Dockerfile option</b><br>
  <img src="./images/select.png" width="500">
</p>


<p align="center">
  <b>Click next</b><br>
  <img src="./images/dockerfile.png" width="500">
</p>

<p align="center">
  <b>Review the Dockerfile, click next than</b><br>
  <img src="./images/review.png" width="500">
</p>

<p align="center">
  <b>Click Build</b><br>
  <img src="./images/build.png" width="500">
</p>


#### 4. Wait a bit until the build is done.

<p align="center">
  <b>Make yourself a cup of coffee in the time we build an image for you</b><br>
</p>
<p align="center">
  <img src="./images/building.png" width="500">
</p>

<p align="center">
  <img src="./images/build-done.png" width="500">
</p>

#### 5. Open images and click 'lunch' and choose 'standalone'.

<p align="center">
  <img src="./images/images.png" width="500">
</p>

<p align="center">
  <img src="./images/launch.png" width="500">
</p>


#### 5. VOILÀ   ![codefresh](./images/superfresh.png)

<p align="center">
  <img src="./images/finish.png" width="500">
</p>


### Start using codefresh.yml
#### Using codefresh.yml you can customize your pipeline
Now when your first service is setup and your first pipeline produced an image, lets move forward and push the image to Dockerhub registry.
We at Codefresh already build for you the basic `codefresh.yml` template, use it.
- Click on your service `react-starter-kit`.
- Switch to `Use YML build`.
- Under Environment variables fill your Dockerhub credentials to be.
  - `DOCKER_USER_NANE` your Dockerhub user name
  - `DOCKER_PASSWORD` your Dockerhub password
- Dont forget to encrypt them!
- Save your updated pipeline
- Build and launch

###### Full credit for the application [react-starter-kit](https://github.com/kriasoft/react-starter-kit)



### Push your image to AWS-ECR
#### Requirements:
  * registry url
  * accessKeyId
  * secretAccessKey
  * region

#### How-to get the requirements
- Go to [Amazon console](https://console.aws.amazon.com/console/home)
- Open `EC2 Container Service`
- Open `Respositories` and create new one, in our case `containers101/reactstarterkit`
- Create
- Get the repository url and the region
- Get the `accessKeyId` and the `secretAccessKey` from the console settings


####Configuration in Codefresh:
We assume you already forked this repo and create a service for it
- In `./codefresh.aws.ecr.example.yml` change `build_step` config
  - `image_name` should be the new name of your repository.
  - Push your change
- Open the service and add new pipeline
- Switch to `Use YML build`
- Change the `YML File Location` to be `./codefresh.aws.ecr.example.yml`
- Under Environment variables fill the next variables:
  - `AWS_REGISTRY` to be the registry url (note that the url already have the repository name)
  - `AWS_ACCESS_KEY` your access key id
  - `AWS_SECRET_KEY` your secret key
  - `AWS_REGION` the region of your registry
Your screen should look like:

<p align="center">
  <img src="./images/aws-ecr-envs.png" width="500">
</p>

  

