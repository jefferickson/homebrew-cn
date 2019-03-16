class Cn < Formula
    desc "Find the index of a label in a CSV header, or print a column of data from a CSV based on the header label."
    homepage "https://github.com/jefferickson/cn"
    url "https://github.com/jefferickson/cn/archive/0.3.0.tar.gz"
    sha256 "eba966d00f64afd7895607c74a5772d6e3377cf6538f8652343f7e2efe31c6f7"
    head "https://github.com/jefferickson/cn.git"

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = buildpath
        (buildpath/"src/github.com/jefferickson").mkpath
        ln_s buildpath, buildpath/"src/github.com/jefferickson/cn"
        system "go", "build", "-o", bin/"cn"
    end
end

