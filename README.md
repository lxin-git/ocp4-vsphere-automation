# ocp4-vsphere-automation

Not transfer to tower yet. but it will be easy...
From your ansible control manager host, make sure pyvmomi module installed for your ansible python env.
Enable epel repo, then:
```
yum install python2-pip
```
or `python3-pip`, depends on your python version used by ansible
```
pip install PyVmomi
```

```
git clone https://github.com/lxin-git/ocp4-vsphere-automation.git
cp all.yml.sample all.yml
vi all.yml
ansible-playbook start.yml
```
