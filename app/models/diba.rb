# Ajuda per passar de csv a ruby amb el vim
#
# :% s/\",\"\(\S\+\)\"/ (\1)\",\"\1\"/
class Diba

  CODIS_CENTRE_GESTORS = {
    "Àrea de Presidència" => [
      ["Secretaria General (1A000)","1A000"],
      ["Direcció de Relacions Internacionals (10400)","10400"],
      ["Direcció de Comunicació (10600)","10600"],
      ["Direcció de Serveis de Suport a la Coordinació General (10700)","10700"],
      ["Subdirecció d'Organització, Processos i Informació Corporativa (11010)","11010"],
      ["Direcció de Serveis de Formació (11100)","11100"],
      ["Coordinació de Concertació i Assistència Local (12000)","12000"],
      ["Servei de Govern Local (12001)","12001"],
      ["Gerència de Serveis d'Assistència. Govern Local (12100)","12100"],
      ["Àrea d'Hisenda i Recursos Interns (20000)","20000"],
      ["Servei de Contractació (20001)","20001"],
      ["Direcció dels Serveis de Recursos Humans (20100)","20100"],
      ["Subdirecció de Logística (20210)","20210"],
      ["Subdirecció d'Edificació (20220)","20220"],
      ["Direcció de Serveis de Tecnologies i Sistemes Corporatius (20300)","20300"],
      ["Direcció de Serveis de Planificació Econòmica (20400)","20400"],
      ["Servei de Programació (20401)","20401"],
      ["Oficina de Patrimoni i Gestió Immobiliària (20402)","20402"],
      ["Intervenció General (2B000)","2B000"],
      ["Tresoreria (2C000)","2C000"]
  ],
    "Àrea de Desenvolupament Econòmic i Ocupació" => [
      ["Gerència de Serveis de Desenvolupament Econòmic (30100)","30100"],
      ["Servei de Mercat de Treball (30101)","30101"],
      ["Oficina Tècnica d'Estratègies Desenvolupament Econòmic (30102)","30102"],
      ["Servei de Teixit Productiu (30103)","30103"],
      ["Gerència de Turisme (30200)","30200"],
      ["Oficina Tècnica de Turisme (30201)","30201"],
      ["Oficina de Promoció Econòmica (30202)","30202"],
      ["Gerència de Serveis de Comerç (30300)","30300"],
      ["Servei de Comerç Urbà (30301)","30301"],
      ["Oficina de Mercats i Fires Locals (30302)","30302"],
      ["Gerència de Serveis d'Esports (30400)","30400"]
  ],
    "Àrea de Coneixement i Noves Tecnologies" => [
      ["Gerència de Serveis de Cultura (40100)","40100"],
      ["Oficina d'Estudis i Recursos Culturals (40101)","40101"],
      ["Oficina de Patrimoni Cultural (40102)","40102"],
      ["Oficina de Difusió Artística (40103)","40103"],
      ["Gerència de Serveis de Biblioteques (40200)","40200"],
      ["Gerència de Serveis d'Educació (40300)","40300"]
  ],
    "Àrea de Territori i Sostenibilitat" => [
      ["Oficina Tècnica de Cartografia i SIG Local (50001)","50001"],
      ["Oficina Tècnica de Prevenció Municipal d'Incendis Forestals (50002)","50002"],
      ["Gerència de Serveis d'Infraestructures Viàries i Mobilitat (50100)","50100"],
      ["Gerència de Serveis d'Equipaments, Infraestructures Urbanes i Patrimoni Arquitectònic (50200)","50200"],
      ["Servei de Patrimoni Arquitectònic Local (50201)","50201"],
      ["Servei d'Equipaments i Espai Públic (50202)","50202"],
      ["Gerència de Serveis d'Habitatge, Urbanisme i Activitats (50300)","50300"],
      ["Gerència de Serveis d'Espais Naturals (50400)","50400"],
      ["Oficina Tècnica de Planificació Anàlisi Territorial (50401)","50401"],
      ["Oficina Tècnica de Parcs Naturals (50402)","50402"],
      ["Oficina Tècnica d'Acció Territorial (50403)","50403"],
      ["Gerència de Serveis de Medi Ambient (50500)","50500"]
  ],
    "Àrea d'Atenció a les Persones" => [
      ["Gerència de Serveis de Benestar Social (60100)","60100"],
      ["Servei d'Acció Social (60101)","60101"],
      ["Oficina de Suport Tècnic als Serveis Socials (60103)","60103"],
      ["Oficina de Suport Tècnic a l'Autonomia Personal i Atenció a la Dependència (60104)","60104"],
      ["Gerència de Serveis Residencials d'Estades Temporals i RESPIR (60200)","60200"],
      ["Oficina de Suport Tècnic i Logístic (60202)","60202"],
      ["Gerència de Serveis d'Igualtat i Ciutadania (60300)","60300"],
      ["Oficina de Promoció de Polítiques d'Igualtat Dona-Home (60301)","60301"],
      ["Oficina del Pla Jove (60302)","60302"],
      ["Servei de Polítiques de Diversitat i Ciutadania (60303)","60303"],
      ["Oficina de Participació Ciutadana (60304)","60304"],
      ["Gerència de Serveis de Salut Pública i Consum (60400)","60400"],
      ["Servei de Salut Pública (60401)","60401"],
      ["Servei de Suport Polítiques de Consum (60402)","60402"]
  ]
  }

end
