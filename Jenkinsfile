pipeline
{
    agent any
    stages
    { //agent{label 'Java'}
        stage('build the code')
        { 
            steps {withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_home', maven: 'Maven_home', mavenSettingsConfig: '', traceability: true)}
            {
                sh 'mvn package'
            }
        }
        stage('Deploy the code')
        {// agent{label 'Java'}
            steps{shagent(['DEVCICD'])
             {
                    sh 'scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@3.68.73.85:/usr/share/tomcat/webapps'
            }
            }
                
        }

        
    } 
}
