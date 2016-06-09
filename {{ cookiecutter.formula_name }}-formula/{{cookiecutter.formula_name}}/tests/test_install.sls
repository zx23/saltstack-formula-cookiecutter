{{ '{%' }} set package = salt.pillar.get('{{ cookiecutter.formula_name }}:install:pkgs') {{ '%}' }}

test_installed_package:
  testinfra.package:
    - name: {{ '{{' }} package {{ '}}' }}
    - is_installed: True
