https://here.project

root * /usr/src/app/

@notStatic {
  not path /static/* /media/*
}

reverse_proxy @notStatic django:8000

file_server
