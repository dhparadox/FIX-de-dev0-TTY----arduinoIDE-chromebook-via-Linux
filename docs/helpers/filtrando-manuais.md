# Filtragem de Saida de Manuais em sistemas UNIX

# Encontrar uma flag na documentação de um comando

```bash
man <comando> | col -b | grep -n -A4 -B4 -- '<flag>'
```

Exemplo:

```bash
man make | col -b | grep -n -A4 -B4 -- '-j'
```

## Explicação

- `man <comando>` → abre a documentação.
- `col -b` → remove formatação (backspaces, negrito, etc.), produzindo texto puro.
- `grep -n` → mostra o número da linha da ocorrência.
- `-A4` → exibe 4 linhas após a ocorrência.
- `-B4` → exibe 4 linhas antes da ocorrência.
- `--` → indica ao `grep` que os argumentos seguintes não são opções.
- `'<flag>'` → flag ou texto a ser pesquisado.

## Leitura mais aprofundada

```bash
info <comando> | less
```

Dentro do `less`:

```text
/<flag>
```

ou, para buscar por um conceito relacionado:

```text
/<palavra-chave>
```

Exemplo:

```text
/parallel
```
# Deseja prarticar o manuseio de kernel CLI?
      [+] Referencia: https://overthewire.org/wargames/bandit/
