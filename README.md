# gradleMultiprojectProvided
Gradle Multiproject with a Provided scope / configuration.  Running war from the CL creates a .war with no jars marked with 'provided'.  But run Eclipse > Run On Tomcat and the provided and test jars go to webinf/lib.

## Prepare

1. Clone this project
2. Eclipse / STS with Gradle plugin installed - import gradle project and choose the master project

1. cd master
2. gradle war
3. jar tvf ../apir/build/libs/apir.war | grep jar
4. Observe no 'tomcat' jars are in the war

Now do in Eclipse:

1. In Eclipse with Gradle plugin ... right-click > import > gradle and select the master project > build > select > ok
2. Choose 'apir' project > right-click > run on server > piviol tc Server is find
3. Choose 'pivotal tc Server ' > Browse Deployment Location
4. Observe there ARE 'tomcat' jars in the wtpwebapps/apir/WEB-INF/lib directory

