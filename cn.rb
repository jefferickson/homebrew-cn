class Cn < Formula
    desc "Find the index of a label in a CSV header"
    homepage "https://github.com/jefferickson/cn"
    url "https://github.com/jefferickson/cn/archive/0.2.0.tar.gz"
    sha256 "b54addb658d675b13f3f43a3d657f4c9a663fac22c32f83d5e494a282b517dc4"
    head "https://github.com/jefferickson/cn.git"

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = buildpath
        (buildpath/"src/github.com/jefferickson").mkpath
        ln_s buildpath, buildpath/"src/github.com/jefferickson/cn"
        system "go", "build", "-o", bin/"cn"
    end
end

