class Lssh < Formula
    desc "SSH Connection Manager"
    homepage "https://github.com/JamesStandbridge/homebrew-lssh"
    url "https://github.com/JamesStandbridge/lssh-command/archive/refs/tags/v2.0.0.tar.gz"
    sha256 "e692874c8263df0b2ff42b6b015631c7d508db6fad84b360aa9ead65cb61c09d"

    # Python dependency
    depends_on "python@3.x"

    # Python packages
    resource "cryptography" do
        url "https://files.pythonhosted.org/packages/[...]/cryptography-[...].tar.gz"
        sha256 "[...]"
    end

    resource "inquirer" do
        url "https://files.pythonhosted.org/packages/[...]/inquirer-[...].tar.gz"
        sha256 "[...]"
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
  