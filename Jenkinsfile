pipeline
{
    agent any
    stages
    { 
        stage('build')
        {
            withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_home', maven: 'Maven_home', mavenSettingsConfig: '', traceability: true) 
            {
                sh 'mvn package'
            }
        }

    }
}