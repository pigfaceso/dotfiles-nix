{ ... }:

{
  programs.readline = {
    enable = true;
    variables = {
      show-all-if-ambiguous = true; # Show all matches after one Tab if ambiguous
      visible-stats = true; # Append indicators (/ * @ ...)
      colored-stats = false; # Color completion types
    };
  };
}
