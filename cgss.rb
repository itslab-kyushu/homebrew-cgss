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
class Cgss < Formula
  desc "Cross-Group Secret Sharing"
  homepage "https://github.com/jkawamoto/cgss"
  version "0.1.0"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/cgss/releases/download/v0.1.0/cgss_0.1.0_darwin_amd64.zip"
    sha256 "898e69cc212c308ca1e90dcc8a8c12247b74eec3abd73f39932cf0e3471f368f"
  else
    url "https://github.com/jkawamoto/cgss/releases/download/v0.1.0/cgss_0.1.0_darwin_386.zip"
    sha256 "6fa97deae77cea76df4e9cc0daa8b076d5874e51e47d79191cd10058d1f5997e"
  end

  def install
    bin.install "cgss"
  end

  test do
    system "cgss"
  end

end
