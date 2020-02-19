FROM hashicorp/packer:1.5.4

LABEL "com.github.actions.name" = "Packer validate"
LABEL "com.github.actions.description" = "Validate packer template file in a directory"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="blue"

LABEL "repository" = "https://github.com/dawitnida/packer-validate-action"
LABEL "homepage" = "https://github.com/dawitnida/packer-validate-action"
LABEL "maintainer" = "Dawit Nida <dawit@dawitnida.com>"

RUN apk add --no-cache jq
RUN apk add --no-cache curl

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
