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

    }
}