class Lssh < Formula
    desc "SSH Connection Manager"
    homepage "https://github.com/JamesStandbridge/homebrew-lssh"
    url "https://github.com/JamesStandbridge/lssh-command/archive/refs/tags/v2.0.0.tar.gz"
    sha256 "e692874c8263df0b2ff42b6b015631c7d508db6fad84b360aa9ead65cb61c09d"

    # Python packages
    resource "cryptography" do
        url "https://files.pythonhosted.org/packages/ce/b3/13a12ea7edb068de0f62bac88a8ffd92cc2901881b391839851846b84a81/cryptography-41.0.7.tar.gz]"
        sha256 "13f93ce9bea8016c253b34afc6bd6a75993e5c40672ed5405a9c832f0d4a00bc"
    end
      
    resource "inquirer" do
        url "https://files.pythonhosted.org/packages/87/7a/acbfd27542c5d87d1ee025cd54a7d9923f57d0a89d8d16f526a622237981/inquirer-3.2.1.tar.gz"
        sha256 "d5ff9bb8cd07bd3f076eabad8ae338280886e93998ff10461975b768e3854fbc"
    end

    # sshpass dependency
    depends_on "hudochenkov/sshpass/sshpass"

    def install
        bin.install "lssh.py"
        bin.install_symlink "#{bin}/lssh.py" => "lssh"

        # Install Python dependencies
        venv = virtualenv_create(libexec, "python3")
        venv.pip_install resources
    end
end
  