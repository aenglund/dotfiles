for file in ~/.{bash_prompt,aliases,exports,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
