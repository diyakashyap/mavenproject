pipeline
{
agent any
stages
{

stage ('scm checkout')
{

steps {  git branch: 'master', url: 'https://github.com/diyakashyap/mavenproject.git'   }}


stage('code compile')
{
    steps {withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
    sh 'mvn compile'
}}}


stage('code build')
{ steps {withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
    sh 'mvn clean package -DskipTestse'
}}}

stage('build docker image')
{steps{ sh 'docker build . -t diya0311/devops:tomcat'}}



stage('push docker image to dockerhub') { // Corrected syntax
            steps {
                withDockerRegistry(credentialsId: 'DockerhubCred', url: 'https://index.docker.io/v1/') {
                    sh 'docker push diya0311/devops:tomcat'
                }
            }
        }


/*stage('push docker image to ECR') { // Corrected syntax
            steps {
               withDockerRegistry(credentialsId: 'ecr:eu-central-1:654654407511', url: '654654407511.dkr.ecr.eu-central-1.amazonaws.com/devops-ecr') 
               {
                    sh 'docker push 654654407511.dkr.ecr.eu-central-1.amazonaws.com/devops-ecr:tomcat'
               }
            }
        }*/


}

}