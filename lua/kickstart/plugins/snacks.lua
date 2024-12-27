return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      sections = {
        {

          align = 'center',
          {
            pane = 1,
            section = 'terminal',
            cmd = [[
              osascript -e '
              tell application "Spotify"
                  tell current track
                      set artworkUrl to artwork url
                  end tell
              end tell
              return artworkUrl' | xargs -I {} curl -s {} | chafa --format symbols --symbols vhalf --size 32x15 --stretch; sleep .1
            ]],
            width = 32,
            height = 15,
          },
          {
            align = 'center',
            section = 'terminal',
            cmd = [[
              osascript -e '
              tell application "Spotify"
                  set trackName to name of current track
                  set albumName to album of current track
                  set artistName to artist of current track
                  return "Now Playing:\n" & trackName & "\nAlbum: " & albumName & "\nArtist: " & artistName
              end tell'
            ]],
            width = 40,
            height = 4,
          },
        },
        {
          pane = 2,
          { section = 'keys', gap = 1, padding = 1 },
          { section = 'startup' },
        },
      },
    },
  },
}
