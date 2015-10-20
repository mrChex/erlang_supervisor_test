# Непонятное поведение супервизора

Задача - запустить gen_server из модуля suptest_srv с помощью супервизора.

Если запускать руками - все работает:
```erlang
    {ok, Pid} = suptest_srv:start_link(),
    register(suptest_srv, Pid),
```

Если использовать супервизор - процесс падает без видимых на то причин.

Для проверки:

```sh
$ make start # для запуска используя супервизор
$ make manual_start # для запуска руками
```

Проверка наличия процесса и его корректной работы:
```erlang
1> suptest_srv ! t.
handle info: t
terminated
t
```

так работает только с ручным запуском.