pipeline
{
    agent any
    stages
    { 
        stage('build the code')
        {
            steps{withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_home', maven: 'Maven_home', mavenSettingsConfig: '', traceability: true)}
            {
                sh 'mvn package'
            }
        }
        stage('Deploy the code')
        {
            steps{sshagent(['DEVCICD'])
             {
                    sh 'scp webapp/target/webapp.war ec2-user@3.68.73.85:/usr/share/tomcat/webapps'
            }


                }
        }

    }
}