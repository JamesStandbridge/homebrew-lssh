class Lssh < Formula
    desc "SSH Connection Manager"
    homepage "https://github.com/JamesStandbridge/homebrew-lssh"
    url "https://github.com/JamesStandbridge/lssh-command/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "72b753e583ee7f66fa686cbdb17f7219396db6c51e5bc0bae890bcbce7288ea8  lssh-command-1.0.0.tar.gz"
  
    def install
        bin.install "lssh.py" 
        bin.install_symlink "#{bin}/lssh.py" => "lssh"
    end
end
  