#!/bin/bash
# ------------------------------------------------------------------------
#
# Copyright 2016 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

# ------------------------------------------------------------------------
set -e
BROKER_XML_FILE_PATH=${CARBON_HOME}/repository/conf/broker.xml

# Update thriftServerHost to Docker runtime IP address
sed -i "s|<thriftServerHost>[0-9a-z.]\{1,\}</thriftServerHost>|<thriftServerHost>${LOCAL_DOCKER_IP}</thriftServerHost>|g" "${BROKER_XML_FILE_PATH}" \
&& echo "Updated thriftServerHost with local ip address ${LOCAL_DOCKER_IP}"
