FROM quay.io/openshift/origin-cli:4.9.0 AS build 
LABEL maintainer="Uladzislau_Narkevich@epam.com" 
FROM docker.io/liquibase/liquibase:4.7 
COPY --from=build /usr/bin/oc /usr/bin/oc 
COPY --from=build /usr/bin/kubectl /usr/bin/kubectl