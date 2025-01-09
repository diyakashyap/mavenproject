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
    sh 'mvn clean -B DskipTests package'
}}}

stage('build docker image')
{steps{ sh 'docker build . -t diya0311/devops:tomcat'}}
}

}