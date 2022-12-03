# Домашнее задание #1 (декабрь 2022)
> Широкое толкование задачи запустить виртуальную машину с Linux и установить Midnight Commander

**«Тяжело в учении – легко в бою»**

## Список ПО

### OS:  
   Host: Pop-Os 22.04 LTS  
   VM's: 'server' - Alpine 3.17 репак с апдейтами и Python, 'client' - Ubuntu 18.04    

### Main tools:  
    Vagrant + Ansible, Bash (Nginx installation script), Nginx, curl

## Сверхзадача

Автоматизация реплицируемого разворачивания виртуальной рабочей среды.

_Чтобы уложиться в срок сдачи некоротые моменты проекта еще ждут автоматизации._

## Ход выполнения

На хосте разработчика [Pop!_OS](https://pop.system76.com/) установлены: [VirtualBox](https://www.virtualbox.org/) + [Vagrant](https://www.vagrantup.com/) + [Ansible](https://www.ansible.com/)  

```Vagrantfile``` поднимает две виртуальные машины (ВМ): 'server' ([Alpine 3.17](https://app.vagrantup.com/generic/boxes/alpine317)) и 'client' ([Ubuntu 18.04 LTS](https://app.vagrantup.com/ubuntu/boxes/bionic64)). Предварительно образ Alpine 3.17 переупаковывается с обновлениями и Python 3 для работы Ansible. После поднятия ВМ Vagrant запускает Ansible плейбук, который применяется к обеим системам. Плейбук показывает ответ систем, создает группу 'developers' и импортирует отдельные плейбуки для каждой ВМ.

Стоит отметить, что на ВМ 'server' проброшен порт на хост так, что зайдя на :8181 хоста придет ответ с :80 порта ВМ.

```sh
make install
npm test
```

## Release History

* 0.0.1
    * Работа продолжается