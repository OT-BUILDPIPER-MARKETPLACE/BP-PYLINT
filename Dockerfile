FROM python:3.10

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    jq && \
    python3 -m pip install --upgrade pip && \
    pip install pylint==3.0.3

WORKDIR /app

COPY build.sh .
ADD BP-BASE-SHELL-STEPS /app/buildpiper/shell-functions/

ENV ACTIVITY_SUB_TASK_CODE BP-PYLINT-TASK
ENV SLEEP_DURATION 5s
ENV VALIDATION_FAILURE_ACTION WARNING

ENV FORMAT_ARG "json"
ENV OUTPUT_ARG "pylint_scan.json"
ENTRYPOINT [ "./build.sh" ]
