pipeline
{
agent any
stages
{
        // SCM Checkout -> github/Code repo link
        stage ('scm checkout')
        {
            steps 
            {  
                git branch: 'master', url: 'https://github.com/diyakashyap/mavenproject.git'   
            }
        }

        //Code Compile
        stage('code compile')
        {
            steps 
            {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) 
                {
                    sh 'mvn compile'
                }
            }
        }

        //Code Build
        stage('code build')
        { 
            steps 
            {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true)
                {
                     sh 'mvn clean package -DskipTestse'
                }
            }
        }

        //Image build
        stage('build docker image')
        {
            steps 
            {
                sh 'docker build -t 654654407511.dkr.ecr.eu-central-1.amazonaws.com/myecr:latest .'
            }
        }

        // Image push to ECR
         stage('Push Docker Image to ECR')
        { 
            steps 
            { 
                withDockerRegistry(credentialsId: 'ecr:eu-central-1:aws', url:'https://654654407511.dkr.ecr.eu-central-1.amazonaws.com/myecr')
                { 
                    sh 'aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 654654407511.dkr.ecr.eu-central-1.amazonaws.com'
                    sh 'docker push 6654654407511.dkr.ecr.eu-central-1.amazonaws.com/myecr:latest'
                }
            }
        }
        
  }
}

/*stage('push docker image to dockerhub') { // Corrected syntax
            steps {
                withDockerRegistry(credentialsId: 'DockerhubCred', url: 'https://index.docker.io/v1/') {
                    sh 'docker push diya0311/devops:tomcat'
                }
            }
        }
*/

       

  

/*stage('Login to AWS ECR') {
    steps {
        withAWS(credentials: 'ecr:eu-central-1:654654407511', region: 'eu-central-1') {
            sh '''
            aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 654654407511.dkr.ecr.eu-central-1.amazonaws.com
            '''
        }
    }
}


stage('push docker image to ECR') { // Corrected syntax
            steps {
               withDockerRegistry(credentialsId: 'AWS', url: '654654407511.dkr.ecr.eu-central-1.amazonaws.com/devops-ecr') 
               {
                    sh 'docker push 654654407511.dkr.ecr.eu-central-1.amazonaws.com/devops-ecr:tomcat'
               }
            }
        }
*/



/*stage('push docker image to ECR') { // Corrected syntax
            steps {
               // This step should not normally be used in your script. Consult the inline help for details.
                    withDockerRegistry(credentialsId: 'ecr:eu-central-1:AWS', url: '654654407511.dkr.ecr.eu-central-1.amazonaws.com/devops-ecr') {
                            sh 'docker push 654654407511.dkr.ecr.eu-central-1.amazonaws.com/devops-ecr:tomcat'
                    }
            }
        }
*/

/*}
 
}*/