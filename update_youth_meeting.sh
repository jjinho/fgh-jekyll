#!/bin/bash
# $1 = event_date
# $2 = speaker_english
# $3 = speaker_korean

# Make sure the event_date is in correct YYYY-MM-DD format
if [[ ! $1 =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]
then 
    echo "Invalid date"; exit 1
fi

# Remove the old post
rm _i18n/en/_posts/*-youth-meeting.md
rm _i18n/ko/_posts/*-youth-meeting.md

event_date=$1

cat > _i18n/en/_posts/$1-youth-meeting.md <<EOF
---
title: Event
event_title: Monthly Youth Meeting
event_date: $1
event_date_end:
event_time: 10:00 AM - 2:00 PM
event_location: Flushing Gospel Hall
---
EOF

cat > _i18n/ko/_posts/$1-youth-meeting.md <<EOF
---
title: Event
event_title: 월례 청년집회
event_date: $1
event_date_end:
event_time: 오전 10:00 - 오후 2:00
event_location: 플러싱 모임
---
EOF

