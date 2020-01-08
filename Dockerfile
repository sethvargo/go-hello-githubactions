# Copyright 2020 The Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Specify the version of Go to use
FROM golang:1.13

# Copy all the files from the host into the container
WORKDIR /src
COPY . .

# Enable Go modules
ENV GO111MODULE=on

# Compile the action
RUN go build -o /bin/action

# Specify the container's entrypoint as the action
ENTRYPOINT ["/bin/action"]
