class Cn < Formula
    desc "Find the index of a label in a CSV header"
    homepage "https://github.com/jefferickson/cn"
    url "https://github.com/jefferickson/cn/archive/0.1.0.tar.gz"
    sha256 "e8b6180d472b3ed4e5a1f3904ea289e17d8ca194ebadfdf2ee5493d63df65e63"
    head "https://github.com/jefferickson/cn.git"

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = buildpath
        (buildpath/"src/github.com/jefferickson").mkpath
        ln_s buildpath, buildpath/"src/github.com/jefferickson/cn"
        system "go", "build", "-o", bin/"cn"
    end
end

