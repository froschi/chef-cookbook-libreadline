packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libreadline6
  /
when "precise"
  packages |= %w/
    libreadline6
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
