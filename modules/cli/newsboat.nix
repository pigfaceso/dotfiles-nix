{ ... }:

{
  programs.newsboat = {
    enable = true;
    autoReload = true;
    extraConfig = ''
    # Color
    color background default default
    color listnormal default default
    color listnormal_unread default default bold
    color article default default

    # Bind key
    bind-key h quit
    bind-key j down
    bind-key k up
    bind-key l open
    bind-key H prev-feed
    bind-key L next-feed
    '';
    urls = [
      { url = "https://lwn.net/headlines/rss"; }
      { url = "https://news.ycombinator.com/rss"; }
      { url = "https://www.theverge.com/rss/index.xml"; }
    ];
  };
}
