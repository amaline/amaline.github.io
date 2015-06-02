---
published: true
---


## A New Post

Interesting issue.  Using [prose.io](http://prose.io) to edit my Jekyll blog and decided to just edit the default first posting instead of deleting it and creating a new file.  Ended up with some invalid metadata:

---
date: {}
---

Jekyll build failed on the date, had to delete the line for things to work.  Also did not recognize the lexer alias "shell", had to change that to "bash".
