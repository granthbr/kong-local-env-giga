#!/bin/bash
echo -e "KONG_ENFORCE_RBAC=on KONG_AUDIT_LOG=on KONG_ADMIN_GUI_AUTH=basic-auth KONG_ADMIN_GUI_SESSION_CONF='{\"secret\":\"secret\",\"storage\":\"kong\",\"cookie_secure\":false}' kong reload exit" | docker exec -i kong-ent1 /bin/sh
echo -e "Super admin token is KongRul3z!, login to Manager with kong_admin / KongRul3z!"
