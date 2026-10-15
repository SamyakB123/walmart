ARG AIRFLOW_VERSION=3.2.2
FROM apache/airflow:${AIRFLOW_VERSION}

ARG AIRFLOW_VERSION
USER airflow

# Keep the Airflow core version aligned with the base image while adding the
# providers required by the Celery executor and FAB auth manager in Compose.
RUN pip install --no-cache-dir \
    "apache-airflow==${AIRFLOW_VERSION}" \
    apache-airflow-providers-celery \
    apache-airflow-providers-fab
