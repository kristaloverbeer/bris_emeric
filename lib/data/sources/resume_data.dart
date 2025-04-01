import 'package:bris_emeric/data/models/education.dart';
import 'package:bris_emeric/data/models/experience.dart';
import 'package:bris_emeric/data/models/profile.dart';
import 'package:bris_emeric/data/models/project.dart';
import 'package:bris_emeric/data/models/skill.dart';

class ResumeData {
  // Personal Information
  static const Profile personalInfo = Profile(
    name: 'Emeric Bris',
    title: 'Lead Data Engineer',
    location: 'Paris, France',
    email: 'brisemeric.pro@gmail.com',
    summary: 'Passionate Data Engineer with expertise in data engineering and web development.',
    about:
        "I'm a passionate Data Engineer with over 10 years of experience building data pipelines and systems. I specialize mainly in data engineering but I'm also very comfortable working with backend technologies. I currently spend time learning Flutter and solving complex problems and creating intuitive user experiences.",
    socialLinks: {
      'LinkedIn': 'https://www.linkedin.com/in/emeric-bris/',
      'GitHub': 'https://github.com/kristaloverbeer',
    },
  );

  // Professional Experience
  static const List<Experience> experiences = [
    Experience(
      position: 'Data Team Lead',
      company: 'Side.co',
      period: '2019 - 2024',
      location: 'Paris, France',
      responsibilities: [
        'Implemented data engineering best practices and CI/CD processes, achieving near-zero error rates in data collection',
        'Initiated lambda architecture implementation with Apache Kafka and Airflow for real-time capacities like recruitment rule checking',
        'Developed real-time travel time computation system for temporary workers and missions optimization',
        'Created NLP system to convert experience descriptions into ISO ROME codes for skill matching',
        'Managed temporary workforce systems including French holiday invoicing regulations',
        'Implemented third-party integration flows for payroll and contract management',
        'Led recruitment, training, and mentoring of Data Engineers and Data Analysts',
      ],
      technologies: ['Python', 'Apache Kafka', 'Airflow', 'NLP'],
    ),
    Experience(
      position: 'Data Engineer',
      company: 'Kpler',
      period: '2018 - 2019',
      location: 'Paris, France',
      responsibilities: [
        'Designed high-performance data pipelines and APIs using Python, Scala, and Elasticsearch',
        'Led platform migration project consolidating multiple codebases using Python, PostgreSQL, and Ansible',
        'Developed generic CRUD APIs with Python, Flask, and SQLAlchemy for business analyst autonomy',
        'Built real-time data aggregation system for front-end applications and report generation',
      ],
      technologies: [
        'Python',
        'Scala',
        'Elasticsearch',
        'PostgreSQL',
        'Ansible',
        'Flask',
        'SQLAlchemy',
        'AngularJS',
      ],
    ),
    Experience(
      position: 'DevOps Engineer',
      company: 'Tiime',
      period: '2017 - 2018',
      location: 'Paris, France',
      responsibilities: [
        'Set up internal and AWS infrastructure for testing and CI/CD, implementing development best practices',
        'Developed automatic bank transaction labeling system with real-time and batch processing capabilities',
        'Created internal web interface for manual review of low-confidence results',
        'Trained developers on Python, development best practices, and TDD',
      ],
      technologies: [
        'Python',
        'Flask',
        'Docker',
        'AWS',
        'RabbitMQ',
        'Redis',
        'AngularJS',
        'Ansible',
      ],
    ),
    Experience(
      position: 'Data Engineer',
      company: 'SoftBank Robotics Europe',
      period: '2015 - 2017',
      location: 'Paris, France',
      responsibilities: [
        'Developed data collection pipelines between various storage systems and Data Lake',
        'Implemented automated data processing workflows with visualization capabilities',
        'Containerized ETL solution and integrated it into CI pipeline',
      ],
      technologies: [
        'Python',
        'Spark',
        'Django',
        'AWS EMR',
        'Docker',
        'Vagrant',
        'Ansible',
        'GitLab',
        'Bash',
        'Luigi',
      ],
    ),
  ];

  // Education
  static const List<Education> education = [
    Education(
      institution: 'CY Tech (ex EISTI)',
      degree: 'Engineering Degree - Business Intelligence',
      period: '2012 - 2015',
      location: 'Paris, France',
      achievements: [
        'Decision theory (ETL, multidimensional, reporting)',
        'Modeling and architecture of decision systems',
        'Database, SQL, OLAP',
        'Data Mining and Data Analysis',
        'Descriptive & inferential statistics',
        'Numerical analysis',
        'Linear & non-linear optimization',
        'Graph theory',
      ],
    ),
    Education(
      institution: 'Lycée Chateaubriand',
      degree: 'Preparatory classes: MPSI/PSI',
      period: '2010 - 2012',
      location: 'Rennes, France',
      achievements: [
        'Intensive preparation for engineering schools',
        'Focus on mathematics, physics, and engineering sciences',
      ],
    ),
  ];

  // Skills
  static const List<Skill> skills = [
    Skill(title: 'Programming', skills: ['Python', 'SQL', 'Shell', 'Scala', 'Dart', 'Bash']),
    Skill(
      title: 'Frameworks',
      skills: ['Airflow', 'Luigi', 'Spark', 'FastAPI', 'Flask', 'Django', 'AngularJS'],
    ),
    Skill(
      title: 'Data Technologies',
      skills: ['Apache Kafka', 'dbt', 'ETL', 'Data Warehouse', 'Data Pipeline'],
    ),
    Skill(title: 'Databases', skills: ['PostgreSQL', 'MongoDB', 'Elasticsearch', 'Redis', 'OLAP']),
    Skill(
      title: 'DevOps',
      skills: ['Git', 'Docker', 'Kubernetes', 'Ansible', 'Terraform', 'CI/CD', 'Vagrant', 'AWS'],
    ),
    Skill(title: 'Cloud', skills: ['AWS', 'Google Cloud']),
    Skill(title: 'Monitoring & Visualization', skills: ['Looker', 'Metabase']),
    Skill(title: 'Project Tools', skills: ['GitLab', 'Slack', 'Notion', 'Jira']),
    Skill(
      title: 'Leadership',
      skills: ['Team Management', 'Recruitment', 'Mentoring', 'Technical Leadership', 'Training'],
    ),
  ];

  // Projects
  static const List<Project> projects = [
    Project(
      title: 'Personal Website',
      description: 'Personal website built with Flutter Web',
      imageUrl: 'assets/images/profile.webp',
      projectUrl: 'https://kristaloverbeer.github.io/bris_emeric',
      githubUrl: 'https://github.com/kristaloverbeer/bris_emeric',
      technologies: ['Flutter', 'Dart', 'Firebase'],
    ),
  ];
}
