import 'package:eurolearning/models/curso_model.dart';

class ApiServices {
  List<Curso> getCursos() {
    final curso1 = Curso(
      id: 281495,
      overview:
          "Este curso capacita profissionais na aplicação das Boas Práticas de Fabricação, assegurando a produção de medicamentos e produtos para saúde com alta qualidade e segurança. Aborda normas técnicas e procedimentos para garantir a integridade dos produtos durante sua fabricação.",
      teacher: "Fernanda",
      startDate: DateTime.parse("2024-11-18"),
      endDate: DateTime.parse("2024-11-21"),
      title: "Boas Práticas de Fabricação",
      duration: 43,
      progress: 72.0,
      topics: [
        "Princípios e Normas das Boas Práticas de Fabricação",
        "Controle de Qualidade e Garantia da Qualidade",
        "Higiene e Segurança no Ambiente de Produção"
      ],
    );

    final curso2 = Curso(
      id: 389305,
      overview:
          "Focado em normas e técnicas para a manipulação segura e eficaz de medicamentos e produtos de saúde, o curso visa garantir a qualidade e segurança dos produtos manipulados. É ideal para profissionais que atuam em farmácias e laboratórios de manipulação.",
      teacher: "Marcelo",
      startDate: DateTime.parse("2024-07-24"),
      endDate: DateTime.parse("2024-07-29"),
      title: "Boas Práticas de Manipulação",
      duration: 20,
      progress: 63.0,
      topics: [
        "Princípios de Boas Práticas de Manipulação",
        "Equipamentos e Infraestrutura",
        "Processos de Manipulação e Procedimentos Operacionais"
      ],
    );

    final curso3 = Curso(
      id: 489535,
      overview:
          "Este curso ensina os princípios e práticas de farmacovigilância, incluindo o monitoramento de efeitos adversos de medicamentos e a implementação de medidas corretivas para garantir a segurança dos pacientes. Destina-se a profissionais envolvidos na avaliação e gestão de riscos relacionados a medicamentos.",
      teacher: "Karen",
      startDate: DateTime.parse("2024-01-11"),
      endDate: DateTime.parse("2024-01-21"),
      title: "Farmacovigilância",
      duration: 54,
      progress: 48.0,
      topics: [
        "Fundamentos da Farmacovigilância",
        "Coleta e Análise de Dados de Segurança",
        "Regulamentação e Normas para Farmacovigilância"
      ],
    );

    final curso4 = Curso(
      id: 8902895,
      overview:
          "Destinado a profissionais que lidam com o processo de registro de medicamentos, cosméticos e produtos para saúde, o curso aborda os requisitos regulatórios e procedimentos necessários para a obtenção da autorização de comercialização desses produtos.",
      teacher: "Bianca",
      startDate: DateTime.parse("2024-01-07"),
      endDate: DateTime.parse("2024-01-09"),
      title: "Registro de Produtos",
      duration: 8,
      progress: 50.0,
      topics: [
        "Processo de Registro de Medicamentos e Produtos de Saúde",
        "Documentação Necessária para Registro",
        "Análise e Avaliação de Dossiês de Registro"
      ],
    );

    List<Curso> cursos = [
      curso1,
      curso2,
      curso3,
      curso4,
      curso1,
      curso2,
      curso3,
      curso4,
      curso1,
      curso2,
      curso3,
      curso4
    ];
    return cursos;
  }
}
