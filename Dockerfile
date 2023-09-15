FROM liferay/portal:7.4.3.90-ga90

# Owner directory $LIFERAY
USER liferay

# Directory Liferay Portal
WORKDIR /opt/liferay/

# Copy configuration portal to into container Liferay Portal 7.4
COPY --chown=liferay:liferay configs/local/portal-ext.properties $LIFERAY_HOME/
# COPY --chown=liferay:liferay configs/local/license $LIFERAY_HOME/artifacts/license
# COPY --chown=liferay:liferay scripts/liferay-entrypoint.sh $LIFERAY_HOME/liferay-entrypoint.sh


# Copy files and folders to into container directory
COPY --chown=liferay:liferay license/*.xml ${LIFERAY_HOME}/deploy

# Copy themes
COPY --chown=liferay:liferay bundles/deploy/*.war ${LIFERAY_HOME}/deploy/

# Copy modules
# COPY --chown=liferay:liferay bundles/osgi/modules/*.jar ${LIFERAY_HOME}/osgi/modules

# give permisions
# RUN chown -R liferay:liferay /mnt/liferay/
# RUN chmod -R a+rwx /mnt/liferay/
# RUN chown -R liferay:liferay /opt/liferay/logs
# RUN chmod -R a+rwx /opt/liferay/logs
# RUN chown -R liferay:liferay /opt/liferay/data
# RUN chmod -R a+rwx /opt/liferay/data
# RUN chown -R liferay:liferay /opt/liferay/deploy
# RUN chmod -R a+rwx /opt/liferay/deploy

# Expose ports to Liferay Portal
EXPOSE 8000 8080 8081 8088
