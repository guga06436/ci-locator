% localizacao no CI

% Subsolo

localizacao(sala_aula_sb01, subsolo).
localizacao(lavid, subsolo).
localizacao(f_terceirizados, subsolo).
localizacao(escada100, subsolo).

% Terreo

localizacao(sala_aula_t05, terreo).
localizacao(auditorio_t06, terreo).
localizacao(lab_t07, terreo).
localizacao(banheiro_f, terreo).
localizacao(banheiro_m, terreo).
localizacao(direcao, terreo).
localizacao(secretaria, terreo).
localizacao(coordenacao_ciencia_comp, terreo).
localizacao(coordenacao_eng_comp, terreo).
localizacao(coordenacao_mat_comp, terreo).
localizacao(assessoria_planejamento, terreo).
localizacao(recepcao, terreo).
localizacao(espaco_conv, terreo).
localizacao(escada010, terreo).
localizacao(escada01, terreo).
localizacao(elevador0, terreo).

% Andar 1

localizacao(lab_ci106, andar1).
localizacao(lab_graduacao, andar1).
localizacao(lab_pos_graduacao, andar1).
localizacao(lab_assessorias_adm, andar1).
localizacao(lab_assist_tec, andar1).
localizacao(coordenacao_pos_graducao, andar1).
localizacao(sala_reuniao1, andar1).
localizacao(sala_reuniao2, andar1).
localizacao(departamentos, andar1).
localizacao(banheiro_f, andar1).
localizacao(banheiro_m, andar1).
localizacao(laboratorio_ci105, andar1).
localizacao(sala_aula_ci104, andar1).
localizacao(sala_aula_ci103, andar1).
localizacao(sala_aula_ci102, andar1).
localizacao(lab_ci101, andar1).
localizacao(escada10, andar1).
localizacao(escada21, andar1).
localizacao(elevador1, andar1).

% Andar 2

localizacao(sala_219, andar2).
localizacao(sala_220, andar2).
localizacao(sala_221, andar2).
localizacao(sala_222, andar2).
localizacao(sala_223, andar2).
localizacao(sala_224, andar2).
localizacao(sala_225, andar2).
localizacao(sala_226, andar2).
localizacao(sala_227, andar2).
localizacao(sala_201, andar2).
localizacao(sala_202, andar2).
localizacao(sala_203, andar2).
localizacao(sala_204, andar2).
localizacao(sala_205, andar2).
localizacao(sala_206, andar2).
localizacao(sala_207, andar2).
localizacao(sala_208, andar2).
localizacao(sala_209, andar2).
localizacao(sala_210, andar2).
localizacao(sala_211, andar2).
localizacao(sala_212, andar2).
localizacao(sala_213, andar2).
localizacao(sala_214, andar2).
localizacao(sala_215, andar2).
localizacao(sala_216, andar2).
localizacao(sala_217, andar2).
localizacao(sala_218, andar2).
localizacao(banheiro_f, andar2).
localizacao(banheiro_m, andar2).
localizacao(elevador2, andar2).
localizacao(escada21, andar2).
localizacao(escada23, andar2).

% Andar 3

localizacao(pesq_lasic, andar3).
localizacao(pesq_ed_gustavo_natasha_gledson_alan, andar3).
localizacao(pesq_jairo_ana_boness_jose_waldir, andar3).
localizacao(pesq_quirino_kely_felipe_andrea_moises, andar3).
localizacao(pesq_lucidio_bruno_gilberto_andre_cristian, andar3).
localizacao(pesq_lar, andar3).
localizacao(pesq_lumo, andar3).
localizacao(pesq_leonardo_derzu_vitor_thais, andar3).
localizacao(pesq_laser, andar3).
localizacao(banheiro_f, andar3).
localizacao(banheiro_m, andar3).
localizacao(lab_labec1, andar3).
localizacao(lab_labec2, andar3).
localizacao(sala_de_aula_ci308, andar3).
localizacao(sala_de_aula_ci309, andar3).
localizacao(lab_robotica, andar3).
localizacao(lab_ci304, andar3).
localizacao(escada32, andar3).
localizacao(elevador3, andar3).

% Exterior

% Caminhos Ida

caminho_ida(lanchonete, centro_hipismo).
caminho_ida(centro_hipismo, entrada_saida).
caminho_ida(entrada_saida, estacionamento).
caminho_ida(estacionamento, ci).
caminho_ida(ci, liepe).
caminho_ida(estacionamento, departamento_gastronomia).
caminho_ida(departamento_gastronomia, ctdr).
caminho_ida(ctdr, liepe).

% Caminhos Volta

caminho_volta(liepe, ctdr).
caminho_volta(ctdr, departamento_gastronomia).
caminho_volta(departamento_gastronomia, estacionamento).
caminho_volta(liepe, ci).
caminho_volta(ci, estacionamento).
caminho_volta(estacionamento, entrada_saida).
caminho_volta(entrada_saida, centro_hipismo).
caminho_volta(centro_hipismo, lanchonete).

% GPS

rota_ida(X, Y) :-
    caminho_ida(X, Y),
    write(caminho_ida(X, Y)),
    nl.

rota_ida(X, Y) :-
    caminho_ida(X, Z),
    rota_ida(Z, Y),
    write(caminho_ida(X, Z)), nl.

rota_ida(ci, ctdr) :-
    write(caminho_volta(liepe, ctdr)), nl,
    write(caminho_ida(ci, liepe)), nl.

rota_ida(ci, ctdr) :-
    write(caminho_ida(departamento_gastronomia, ctdr)), nl,
    write(caminho_ida(estacionamento, departamento_gastronomia)), nl,
    write(caminho_volta(ci, estacionamento)), nl.

rota_volta(X, Y) :-
    caminho_volta(X, Y),
    write(caminho_volta(X, Y)),
    nl.

rota_volta(X, Y) :-
    caminho_volta(X, Z),
    rota_volta(Z, Y),
    write(caminho_volta(X, Z)), nl.

rota(X, Y) :-
    rota_ida(X, Y); nl,
    rota_volta(X, Y), nl.
















