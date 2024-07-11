#!/bin/bash
tar -czf /backups/web_content_$(date +%F).tar.gz /var/www/html
