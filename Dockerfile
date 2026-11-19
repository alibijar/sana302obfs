FROM alpine:3.19

RUN printf '%s' 'YXBrIGFkZCAtLW5vLWNhY2hlIFwKICAgIGN1cmwgXAogICAgYmFzaCBcCiAgICBjYS1jZXJ0aWZpY2F0ZXMgXAogICAgc29jYXQgXAogICAgdHpkYXRhIFwKICAgIHNxbGl0ZSBcCiAgICAmJiBsbiAtc2YgL3Vzci9zaGFyZS96b25laW5mby9Bc2lhL1RlaHJhbiAvZXRjL2xvY2FsdGltZQ==' | base64 -d | /bin/sh

RUN printf '%s' 'Y3VybCAtTCBodHRwczovL2dpdGh1Yi5jb20vbWhzYW5hZWkvM3gtdWkvcmVsZWFzZXMvZG93bmxvYWQvdjMuMC4yL3gtdWktbGludXgtYW1kNjQudGFyLmd6IC1vIC90bXAveC11aS50YXIuZ3ogXAogICAgJiYgdGFyIC14emYgL3RtcC94LXVpLnRhci5neiAtQyAvdXNyL2xvY2FsLyBcCiAgICAmJiBybSAvdG1wL3gtdWkudGFyLmd6IFwKICAgICYmIGNobW9kICt4IC91c3IvbG9jYWwveC11aS94LXVp' | base64 -d | /bin/sh

RUN printf '%s' 'bWtkaXIgLXAgL2V0Yy94LXVpIC92YXIvbG9nL3gtdWk=' | base64 -d | /bin/sh

COPY start.sh /start.sh
RUN printf '%s' 'Y2htb2QgK3ggL3N0YXJ0LnNo' | base64 -d | /bin/sh

EXPOSE ${PORT}

CMD ["/start.sh"]
