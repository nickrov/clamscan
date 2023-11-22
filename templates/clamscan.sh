#!/bin/bash

clamscan -o --log=/usr/local/clamav/reports/$( date '+%Y-%m-%d' ).txt --copy=/usr/local/clamav/quarantine/ -r --exclude=/usr/local/clamav/quarantine

chown -R :"{{ auditors }}" /usr/local/clamav/reports
