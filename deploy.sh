
. .env

gpg --import $MVN_SETTINGS/gpg-private.asc

mvn clean deploy -e -Prelease -s $MVN_SETTINGS/maven-settings.xml &
