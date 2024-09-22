pipeline
{
agent any
stages
{

stage('scm checkout')
{
    steps 
    { 
        git branch: 'main', url: 'https://github.com/diyakashyap/mavenproject.git' 
    }
}


stage('Compile the job')
 {
    steps 
    {
         withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_home', maven: 'Maven_home', mavenSettingsConfig: '', traceability: true)
        {
            sh 'mvn compile'
        } 
    }
 }

stage('Build the code')
 {
    steps 
    { 
        withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_home', maven: 'Maven_home', mavenSettingsConfig: '', traceability: true) 
        {
            sh 'mvn test'
        } 
    }
 }

stage('Build the code')
 {
    steps 
    { 
        withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_home', maven: 'Maven_home', mavenSettingsConfig: '', traceability: true) 
        {
            sh 'mvn package'
        } 
    }
}
}
}