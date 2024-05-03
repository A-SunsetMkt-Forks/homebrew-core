class PyqtBuilder < Formula
  include Language::Python::Virtualenv

  desc "Tool to build PyQt"
  homepage "https://www.riverbankcomputing.com/software/pyqt-builder/intro"
  url "https://files.pythonhosted.org/packages/57/09/11d09b4140932960a4e232e04858ceda19d821f8deb350605934f2251c87/pyqt_builder-1.16.2.tar.gz"
  sha256 "bf723cdb7cd23d2512e2acda7bc6b81f00fb05ccc5e9a8846bd34d47514cddb9"
  license any_of: ["GPL-2.0-only", "GPL-3.0-only"]
  head "https://www.riverbankcomputing.com/hg/PyQt-builder", using: :hg

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "0eb77d1bf8986edf6f436f5ee4abb665336a462c510bdfc476d322b5d7acd0ad"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "0eb77d1bf8986edf6f436f5ee4abb665336a462c510bdfc476d322b5d7acd0ad"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "0eb77d1bf8986edf6f436f5ee4abb665336a462c510bdfc476d322b5d7acd0ad"
    sha256 cellar: :any_skip_relocation, sonoma:         "1c627ff572c22f859d49a1be3eae3ee4fbf9ebed5cf4649e66d335a0ffb0a478"
    sha256 cellar: :any_skip_relocation, ventura:        "1c627ff572c22f859d49a1be3eae3ee4fbf9ebed5cf4649e66d335a0ffb0a478"
    sha256 cellar: :any_skip_relocation, monterey:       "1c627ff572c22f859d49a1be3eae3ee4fbf9ebed5cf4649e66d335a0ffb0a478"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "46afefe59d1147ed087c9ef19e705e56951865c25eb7fc73fd158bbcba4dc35d"
  end

  depends_on "python@3.12"

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/ee/b5/b43a27ac7472e1818c4bafd44430e69605baefe1f34440593e0332ec8b4d/packaging-24.0.tar.gz"
    sha256 "eb82c5e3e56209074766e6885bb04b8c38a0c015d0a30036ebe7ece34c9989e9"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/d6/4f/b10f707e14ef7de524fe1f8988a294fb262a29c9b5b12275c7e188864aed/setuptools-69.5.1.tar.gz"
    sha256 "6c1fccdac05a97e598fb0ae3bbed5904ccb317337a51139dcd51453611bbb987"
  end

  resource "sip" do
    url "https://files.pythonhosted.org/packages/99/85/261c41cc709f65d5b87669f42e502d05cc544c24884121bc594ab0329d8e/sip-6.8.3.tar.gz"
    sha256 "888547b018bb24c36aded519e93d3e513d4c6aa0ba55b7cc1affbd45cf10762c"
  end

  def install
    python3 = "python3.12"
    venv = virtualenv_install_with_resources

    # Modify the path sip-install writes in scripts as we install into a
    # virtualenv but expect dependents to run with path to Python formula
    inreplace venv.site_packages/"sipbuild/builder.py", /\bsys\.executable\b/, "\"#{which(python3)}\""
  end

  test do
    system bin/"pyqt-bundle", "-V"
    system libexec/"bin/python", "-c", "import pyqtbuild"
  end
end
