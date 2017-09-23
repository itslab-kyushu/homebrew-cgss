#
# cgss.rb
#
# Copyright (c) 2017 Junpei Kawamoto
#
# This file is part of cgss.
#
# cgss is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# cgss is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with cgss.  If not, see <http://www.gnu.org/licenses/>.
#
require 'rbconfig'
class Cgss < Formula
  desc "Cross-Group Secret Sharing"
  homepage "https://github.com/jkawamoto/cgss"
  version "0.2.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/cgss/releases/download/v0.2.0/cgss_0.2.0_darwin_amd64.zip"
      sha256 "d41b30f648eca977f38e4ee88b6cf1b84d653242ff6d00f57c3d5bd31686c7e6"
    when /linux/
      url "https://github.com/jkawamoto/cgss/releases/download/v0.2.0/cgss_0.2.0_linux_amd64.tar.gz"
      sha256 "b5c063960d5c9ae39783dc51a5c122ed98a049895124f148daaeac37df05dc27"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/cgss/releases/download/v0.2.0/cgss_0.2.0_darwin_386.zip"
      sha256 "952c84a86df65801540993c7d83d4fbdde51dbaf7278790db8dc74b2eb0c6d66"
    when /linux/
      url "https://github.com/jkawamoto/cgss/releases/download/v0.2.0/cgss_0.2.0_linux_386.tar.gz"
      sha256 "80e1b63576194dd024dad41df5bc351cb8a43f0c6d683846fbb224fc8205e8e4"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "cgss"
  end

  test do
    system "cgss"
  end

end
