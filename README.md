# dev-env

Build dev environment from scratch

To launch from scratch, run the following command:

```bash
./run
```

You can also filter, for an specific file inside of runs directory, for example:

```bash
./run 02-neovim
```

## WIP in progress

- Add wallpaper from bash script

### Info about Archivo partition

Add this line to /etc/fstab to automount Archivo partition:

```bash
UUID=4870-BE1C /media/pracker/Archivo exfat defaults,uid=1000,gid=1000,umask=0000,nofail 0 0
```

### Notes about console Turbo (Windsurf)

- Insert log message: ctrl + alt + l
- Update line number: ctrl + alt + u
- Comment all logs: alt + shift + c
- Uncomment all logs: alt + shift + u
- Delete all logs: alt + shift + d

## License

MIT
