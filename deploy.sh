#!/bin/bash

. .env

mvn clean deploy -e -s $MVN_SETTINGS &
