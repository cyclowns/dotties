from powerline_shell.themes.default import DefaultColor

class Color(DefaultColor):
    """its my theme boys"""
    USERNAME_FG = 15
    USERNAME_BG = 57
    USERNAME_ROOT_BG = 1

    HOSTNAME_FG = 8
    HOSTNAME_BG = 7

    HOME_SPECIAL_DISPLAY = False
    PATH_BG = 8  # dark grey
    PATH_FG = 7  # light grey
    CWD_FG = 15  # white
    SEPARATOR_FG = 7

    READONLY_BG = 1
    READONLY_FG = 15

    REPO_CLEAN_BG = 2   # green
    REPO_CLEAN_FG = 0   # black
    REPO_DIRTY_BG = 1   # red
    REPO_DIRTY_FG = 15  # white

    JOBS_FG = 14
    JOBS_BG = 8

    CMD_PASSED_BG = 8
    CMD_PASSED_FG = 15
    CMD_FAILED_BG = 1
    CMD_FAILED_FG = 0

    VIRTUAL_ENV_BG = 2
    VIRTUAL_ENV_FG = 0

    TIME_FG = 8
    TIME_BG = 7
