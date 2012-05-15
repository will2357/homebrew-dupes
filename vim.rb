require 'formula'

class Vim < Formula
  homepage 'http://www.vim.org/'
  # Get stable versions from hg repo instead of downloading an increasing
  # number of separate patches.
  url 'https://vim.googlecode.com/hg/', :revision => '6c318419e331'
  version '7.3.515'

  head 'https://vim.googlecode.com/hg/'

  def install
    system "./configure", "--prefix=#{prefix}",
			  "--mandir=#{man}",
    			  #"--enable-gui=no",
    			  #"--with-x",
    			  "--enable-clipboard=yes",
    			  "--enable-xterm_clipboard=yes",
    			  "--enable-xterm_save=yes",
    			  #"--disable-nls",
    			  #"--enable-multibyte",
    			  #"--with-tlib=ncurses",
    			  #"--enable-perlinterp",
    			  #"--enable-pythoninterp",
    			  #"--enable-rubyinterp",
    			  "--enable-cscope",
    			  #"--with-ruby-command=#{`which ruby`.sub(/\n/,'')}",
    			  "--with-features=huge"
    system "make"
    system "make install"
  end
end
