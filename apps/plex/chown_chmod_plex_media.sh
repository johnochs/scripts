#!/bin/bash
export PLEX_MEDIA=${PLEX_MEDIA:=/plexmedia}
[ -z "${PLEX_MEDIA+1}" ] && { echo '$PLEX_MEDIA directory is not set.'; exit 1; }
[ -d "$PLEX_MEDIX" ] || { echo '$PLEX_MEDIA is not a directory.'; exit 1; }

chown -R plex:plex $PLEX_MEDIA && chmod 0755 $PLEX_MEDIA ;
find $PLEX_MEDIA -type d -exec chmod 755 {} ;; find $PLEX_MEDIA -type f -exec chmod 644 {} ;

exit ;