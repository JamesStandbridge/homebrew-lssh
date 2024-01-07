class Lssh < Formula
    desc "SSH Connection Manager"
    homepage "https://github.com/JamesStandbridge/homebrew-lssh"
    url "https://github.com/JamesStandbridge/lssh-command/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "1a7334dafcf11374900392514b8d40831b043ffa9765c77779eeb79fd8611a5b"
  
    def install
        bin.install "lssh.py" 
        bin.install_symlink "#{bin}/lssh.py" => "lssh"
    end
end
  