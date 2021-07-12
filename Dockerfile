ARG pandoc_version="2.14"
FROM pandoc/latex:${pandoc_version}

ARG pandoc_version

RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet \
 && tlmgr install \
      adjustbox \
      babel-japanese \
      background \
      collectbox \
      everypage \
      footmisc \
      footnotebackref \
      fvextra \
      luatexja \
      ly1 \
      mdframed \
      mweights \
      needspace \
      pagecolor \
      selnolig \
      sourcecodepro \
      sourcesanspro \
      titling \
      zref \
      haranoaji \
      ipaex

ARG eisvogel_version="2.0.0"
RUN install -o root -g root -m 0755 -d /root/.pandoc/defaults -d /root/.pandoc/templates \
 && wget https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/v${eisvogel_version}/eisvogel.tex -O /root/.pandoc/templates/eisvogel.latex

COPY default.yaml /root/.pandoc/defaults/default.yaml

ENTRYPOINT [ "/usr/local/bin/pandoc", "-d", "default" ]
