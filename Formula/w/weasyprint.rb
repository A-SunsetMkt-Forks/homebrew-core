class Weasyprint < Formula
  include Language::Python::Virtualenv

  desc "Convert HTML to PDF"
  homepage "https://www.courtbouillon.org/weasyprint"
  url "https://files.pythonhosted.org/packages/38/76/7f865f0019120be20276813097b5729b8487b93dd4aff339aa77ed8c7ad2/weasyprint-65.1.tar.gz"
  sha256 "120281bdbd42ffaa7d7e5cedbe3182a2cef36ea5ad97fe9f357e43be6a1e58ea"
  license "BSD-3-Clause"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "64a8d8e7c8df0e78cd8e7de00af14b2de9316e43525474a20c488843f30b36e2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "e66e567aaf3de16f289fea0835e43ee2266e57c89dd00e7e9a7ffee0c3339874"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "2049c84ed6795c62d6c26a0450b63077fcecfd3bd4a250f1b81866f62d6b4cf0"
    sha256 cellar: :any_skip_relocation, sonoma:        "27557f500576bfc3f7ed67ec5e024a1631044b054eccb9b88fdee0e6edd789e9"
    sha256 cellar: :any_skip_relocation, ventura:       "6e613821c9a3c1df2ab61308a243924bc63806771846faaa5e240978d3686406"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "f1dddc8cd46ddd8febbbea3e13dc43ad277000bf0fd5ac9a94b48b41a62056cd"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "bd8713b93d51c784ee9d7290641c416f6050616862f5409ffae5374db6786ef9"
  end

  depends_on "pango"
  depends_on "pillow"
  depends_on "python@3.13"

  uses_from_macos "libffi"

  resource "brotli" do
    url "https://files.pythonhosted.org/packages/2f/c2/f9e977608bdf958650638c3f1e28f85a1b075f075ebbe77db8555463787b/Brotli-1.1.0.tar.gz"
    sha256 "81de08ac11bcb85841e440c13611c00b67d3bf82698314928d0b676362546724"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
    sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
  end

  resource "cssselect2" do
    url "https://files.pythonhosted.org/packages/9f/86/fd7f58fc498b3166f3a7e8e0cddb6e620fe1da35b02248b1bd59e95dbaaa/cssselect2-0.8.0.tar.gz"
    sha256 "7674ffb954a3b46162392aee2a3a0aedb2e14ecf99fcc28644900f4e6e3e9d3a"
  end

  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/03/2d/a9a0b6e3a0cf6bd502e64fc16d894269011930cabfc89aee20d1635b1441/fonttools-4.57.0.tar.gz"
    sha256 "727ece10e065be2f9dd239d15dd5d60a66e17eac11aea47d447f9f03fdbc42de"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  resource "pydyf" do
    url "https://files.pythonhosted.org/packages/2e/c2/97fc6ce4ce0045080dc99446def812081b57750ed8aa67bfdfafa4561fe5/pydyf-0.11.0.tar.gz"
    sha256 "394dddf619cca9d0c55715e3c55ea121a9bf9cbc780cdc1201a2427917b86b64"
  end

  resource "pyphen" do
    url "https://files.pythonhosted.org/packages/69/56/e4d7e1bd70d997713649c5ce530b2d15a5fc2245a74ca820fc2d51d89d4d/pyphen-0.17.2.tar.gz"
    sha256 "f60647a9c9b30ec6c59910097af82bc5dd2d36576b918e44148d8b07ef3b4aa3"
  end

  resource "tinycss2" do
    url "https://files.pythonhosted.org/packages/7a/fd/7a5ee21fd08ff70d3d33a5781c255cbe779659bd03278feb98b19ee550f4/tinycss2-1.4.0.tar.gz"
    sha256 "10c0972f6fc0fbee87c3edb76549357415e94548c1ae10ebccdea16fb404a9b7"
  end

  resource "tinyhtml5" do
    url "https://files.pythonhosted.org/packages/fd/03/6111ed99e9bf7dfa1c30baeef0e0fb7e0bd387bd07f8e5b270776fe1de3f/tinyhtml5-2.0.0.tar.gz"
    sha256 "086f998833da24c300c414d9fe81d9b368fd04cb9d2596a008421cbc705fcfcc"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "zopfli" do
    url "https://files.pythonhosted.org/packages/5e/7c/a8f6696e694709e2abcbccd27d05ef761e9b6efae217e11d977471555b62/zopfli-0.2.3.post1.tar.gz"
    sha256 "96484dc0f48be1c5d7ae9f38ed1ce41e3675fd506b27c11a6607f14b49101e99"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"example.html").write <<~HTML
      <p>This is a PDF</p>
    HTML
    system bin/"weasyprint", "example.html", "example.pdf"
    assert_path_exists testpath/"example.pdf"
    File.open(testpath/"example.pdf", encoding: "iso-8859-1") do |f|
      contents = f.read
      assert_match(/^%PDF-1.7\n/, contents)
    end
  end
end
