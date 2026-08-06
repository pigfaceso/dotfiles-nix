{ ... }:

{
  programs.newsboat = {
    enable = true;
    autoReload = true;
    extraConfig = ''
    # Color
    color listnormal        white black
    color listnormal_unread white black
    color listfocus         yellow black bold
    color listfocus_unread  yellow black bold
    color info              yellow black
    color background        white black
    color article           white black

    # Bind key
    bind-key h quit
    bind-key j down
    bind-key k up
    bind-key l open
    bind-key H prev-feed
    bind-key L next-feed
    '';
    urls = [
      { title = "LWM.net"; url = "https://lwn.net/headlines/rss"; }
      { title = "It's FOSS"; url = "https://itsfoss.com/rss"; }
      { title = "Fedora Community Blog"; url = "https://communityblog.fedoraproject.org/feed"; }
      { title = "The Verge"; url = "https://www.theverge.com/rss/index.xml"; }
    ];
  };
}
