# Git Commands

## Git grep and replace

```bash
git grep -l 'original_text' | xargs sed -i 's/original_text/replace_text/g'
```

## Git 

Delete all remote branches which are not in remote 
`get fetch --prune`

Delete all local branches except master
`git branch | grep -v "master" | xargs git branch -D`