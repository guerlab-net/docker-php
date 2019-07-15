#!/bin/bash
docker-compose -f test.yml down
docker-compose -f test.yml up -d
