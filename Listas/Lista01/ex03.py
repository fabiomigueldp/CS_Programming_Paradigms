# Python
'''
Podemos explorar o conceito de herança na orientação a objetos.
A herança é um recurso que permite criar uma nova classe a partir de
uma classe existente. A nova classe, chamada de subclasse, herda os
atributos e métodos da classe existente, chamada de superclasse.
'''

class Foguete:
    def __init__(self, fabricante, motor, combustivel):
        self._fabricante = fabricante
        self._motor = motor
        self._combustivel = combustivel
    
    @property
    def fabricante(self):
        return self._fabricante

    @property
    def motor(self):
        return self._motor

    @property
    def combustivel(self):
        return self._combustivel

    def specs(self):
        print(f"Fabricante: {self.fabricante}")
        print(f"Motor: {self.motor}")
        print(f"Combustível: {self.combustivel}")

class FalconHeavy(Foguete):
    def __init__(self, fabricante, motor, combustivel, vezes_reutilizado):
        super().__init__(fabricante, motor, combustivel)
        self._vezes_reutilizado = vezes_reutilizado
    
    @property
    def vezes_reutilizado(self):
        return self._vezes_reutilizado

    def falcon_heavy_specs(self):
        print(f"Vezes reutilizado: {self.vezes_reutilizado}")

'''
Neste exemplo, criei a classe FalconHeavy que herda atributos da
classe Foguete.


Ainda é possível explorar o conceito de heranças múltiplas, onde uma
classe pode herdar atributos e métodos de mais de uma classe.
'''

class Starship(FalconHeavy):
    def __init__(self, fabricante, motor, combustivel, vezes_reutilizado, prototipo, usos_da_nave):
        super().__init__(fabricante, motor, combustivel, vezes_reutilizado)
        self._prototipo = prototipo
        self._usos_da_nave = usos_da_nave
    
    @property
    def prototipo(self):
        return self._prototipo

    @property
    def usos_da_nave(self):
        return self._usos_da_nave

    def starship_specs(self):
        print(f"Protótipo: {self.prototipo}")
        print(f"Usos da nave: {self.usos_da_nave}")

class Tripulante:
    def __init__(self, nome, idade, funcao):
        self._nome = nome
        self._idade = idade
        self._funcao = funcao

    @property
    def nome(self):
        return self._nome

    @property
    def idade(self):
        return self._idade

    @property
    def funcao(self):
        return self._funcao

    def tripulante_data(self):
        print(f"\nNome: {self.nome}")
        print(f"Idade: {self.idade}")
        print(f"Função: {self.funcao}")

class Tripulacao:
    def __init__(self):
        self._tripulacao = []
    
    @property
    def tripulacao(self):
        return self._tripulacao

    def adicionar_tripulante(self, tripulante):
        self._tripulacao.append(tripulante)
    
    def adicionar_tripulantes(self, tripulantes):
        self._tripulacao.extend(tripulantes)
    
    def remover_tripulante(self, tripulante):
        self._tripulacao.remove(tripulante)
    
    def tripulacao_data(self):
        for tripulante in self._tripulacao:
            tripulante.tripulante_data()
    
    def __str__(self):
        return "\n".join(str(tripulante) for tripulante in self._tripulacao)

class Voo(Starship, Tripulacao):
    def __init__(self, fabricante, motor, combustivel, vezes_reutilizado, prototipo, usos_da_nave, tripulacao, origem, destino, duracao):
        Starship.__init__(self, fabricante, motor, combustivel, vezes_reutilizado, prototipo, usos_da_nave)
        Tripulacao.__init__(self)
        self.adicionar_tripulantes(tripulacao)
        self._origem = origem
        self._destino = destino
        self._duracao = duracao

    @property
    def origem(self):
        return self._origem

    @property
    def destino(self):
        return self._destino

    @property
    def duracao(self):
        return self._duracao

    def voo_data(self):
        print("Dados da nave:\n")
        self.starship_specs()
        print("\nDados do Foguete:\n")
        self.specs()
        self.falcon_heavy_specs()
        print("\nDados da tripulação:")
        self.tripulacao_data()
        print(f"\nOrigem: {self.origem}")
        print(f"Destino: {self.destino}")
        print(f"Duração: {self.duracao}")

'''
Nesta última parte, criei a classe Tripulante, a classe Tripulação e a classe voo.
A classe Tripulante é responsável por armazenar informações sobre um tripulante.
A classe Tripulação é responsável por armazenar uma lista de tripulantes e
manipular esses dados.
A classe voo é responsável por armazenar informações sobre um voo, e nessa classe,
utilizei heranças múltiplas para herdar atributos e métodos das classes Starship e
Tripulação.
'''

dados_tripulantes = [
    ("Elijah Baley", 49, "Piloto"),
    ("R. Daneel Olivaw", 57, "Operador de sistemas"),
    ("R. Giskard Reventlov", 56, "Operador de sistemas"),
    ("R. Sammy", 1, "Passageiro"),
    ("Gladia Delmarre", 35, "Passageira"),
    ("Fastolfe", 70, "Cientista"),
    ("Dors Venabili", 30, "Passageira"),
    ("Hari Seldon", 60, "Passageiro"),
    ("Jezebel Baley", 30, "Passageira"),
    ("Amadiro", 40, "Diretor do Instituto de Robótica de Aurora"),
    ("Vasilia Fastolfe", 40, "Cientista"),
]

tripulantes01 = [Tripulante(*dados) for dados in dados_tripulantes[:3]]
tripulantes02 = [Tripulante(*dados) for dados in dados_tripulantes[3:8]]
tripulantes03 = [Tripulante(*dados_tripulantes[2]),  # Giskard
                 Tripulante(*dados_tripulantes[8]),  # Jezebel
                 Tripulante(*dados_tripulantes[9]),  # Amadira
                 Tripulante(*dados_tripulantes[10])] # Vasilia

tripulacao01 = Tripulacao()
tripulacao01.adicionar_tripulantes(tripulantes01)

tripulacao02 = Tripulacao()
tripulacao02.adicionar_tripulantes(tripulantes02)

tripulacao03 = Tripulacao()
tripulacao03.adicionar_tripulantes(tripulantes03)


voo01 = Voo("SpaceX", "Raptor", "CH4", 0, "SN8", 1, tripulacao01.tripulacao, "Boca Chica, EUA, Terra", "Tycho, Lua", "00:00:02:06:00:00")
voo01.voo_data()
