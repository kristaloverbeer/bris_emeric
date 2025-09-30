import 'package:bris_emeric/data/models/education.dart';
import 'package:bris_emeric/data/models/experience.dart';
import 'package:bris_emeric/data/models/profile.dart';
import 'package:bris_emeric/data/models/project.dart';
import 'package:bris_emeric/data/models/skill.dart';

class ResumeData {
  // Personal Information
  static const Profile personalInfo = Profile(
    name: 'Emeric Bris',
    title: 'Senior Data Engineer | Data Team Lead | SaaS Founder',
    location: 'Paris, France',
    email: 'brisemeric@gmail.com',
    summary:
        "Senior Data Engineer with 10 years' experience building robust data platforms, leading data teams, and architecting SaaS solutions.",
    about:
        'Proven ability to drive high-impact projects end-to-end — from design to production — across cloud, real-time, and batch data systems. Recent work includes launching Performera (AI-driven SaaS), team recruiting and mentoring, and hands-on development using Python, modern DevOps, Next.js and Flutter.',
    socialLinks: {
      'LinkedIn': 'https://www.linkedin.com/in/emeric-bris',
      'GitHub': 'https://github.com/kristaloverbeer',
    },
  );

  // Professional Experience
  static const List<Experience> experiences = [
    Experience(
      position: 'Founder',
      company: 'Performera.pro',
      period: 'Sept 2024 - Now',
      location: 'Paris, France',
      responsibilities: [
        'Conceived, architected, and launched an AI-driven SaaS platform with Next.js and Firebase/GCP, automating resume and cover letter creation, personalized interview preparation, and recruitment workflow for job seekers and career changers.',
        'Engineered a secure, scalable multi-tenant web application, integrating Google Firebase, Firestore, Auth, and reCaptcha v3 for robust data protection and frictionless user onboarding.',
        'Implemented core product features: automated document generation tailored to each job application with pixel-perfect downloaded PDF rendering; Interactive virtual interview coaching with real-time response feedback; Intelligent FAQ and skill-highlighting tools for recruitment success.',
      ],
      technologies: ['Next.js', 'GCP', 'Entrepreneurship', 'Artificial Intelligence'],
    ),
    Experience(
      position: 'Data Team Lead',
      company: 'Side.co',
      period: 'Oct 2019 -  Aug 2024',
      location: 'Paris, France',
      responsibilities: [
        'Built and led a high-performing data team: recruited and mentored engineers/analysts, standardized onboarding and role expectations, and developed long-term career progressions—empowering fast integration and high-impact delivery.',
        'Designed and delivered scalable data pipelines and warehouse infrastructure, integrating ELT/analytics with real-time architecture (Airflow, Kafka, dbt) and launching self-service BI. Achieved a reduction in daily pipeline errors from 50 to 1, with transparent reporting and greater reliability for all stakeholders.',
        'Established robust CI/CD workflows, rebuilt local dev setups, and launched reverse-ETL and analytics microservices, boosting team efficiency and extending business value.',
        'Led the end-to-end development and migration of payroll automation systems, enabling automated declaration for 25,000+ temp workers and over 5,000 payslips monthly with minimal manual effort from operational teams.',
        "Spearheaded transformation of the job posting system by integrating the French ROME classification, expanding from 20 to 3,000 possible job titles, and built a resume analyzer leveraging NLP to match temp workers' prior experience with mission requirements—streamlining recruitment and saving time across product and operations.",
        'Implemented a real-time legal compliance engine and automated contract management, drastically reducing non-compliant hirings and saving hours weekly for operations through robust rule checks on internal tools.',
      ],
      technologies: ['Python', 'Apache Kafka', 'Airflow', 'NLP'],
    ),
    Experience(
      position: 'Data Engineer',
      company: 'Kpler',
      period: 'May 2018 - Oct 2019',
      location: 'Paris, France',
      responsibilities: [
        'Designed, optimized, and maintained high-performance ETL pipelines and APIs using Python, Scala, Elasticsearch, PostgreSQL, and NoSQL — delivering highly aggregated data and actionable commodity intelligence to clients and front-end applications.',
        'Led the migration and consolidation of multiple data platforms and codebases into a unified infrastructure, enabling scalable integration of disparate data sources through Python and Ansible automation.',
        'Established generic CRUD APIs exposed through internal tools empowering business analysts with self-service autonomy and fostering operational efficiency.',
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
      position: 'Software Engineer',
      company: 'Tiime',
      period: 'Jul 2017 - May 2018',
      location: 'Paris, France',
      responsibilities: [
        'Refactored and optimized legacy data science infrastructure, revamping Docker-based deployments to create lean, reliable, and resource-efficient environments for machine learning models.',
        'Engineered and delivered first backend microservices, applying DDD and TDD practices to build robust banking transaction processing, labelization, and categorization pipelines—seamlessly integrating improved data science services.',
        'Developed an interactive internal tool for accountants to audit and correct banking transaction labels, enabling direct feedback on machine learning categorization and accelerating improvements to automation accuracy.',
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
      period: 'Oct 2015 - Jun 2017',
      location: 'Paris, France',
      responsibilities: [
        'Established first scalable data platform, transforming scattered scripts into a centralized analytics pipeline orchestrated with Spotify Luigi, enabling reliable business and technical insights from robot telemetry.',
        'Engineered end-to-end ETL workflows leveraging Pyspark on AWS EMR, ingesting high-volume data from Cassandra, PostgreSQL and APIs, and building a robust AWS S3 data lake in Parquet format—underpinning advanced dashboards and financial analytics.',
        'Expanded data platform use cases from business reporting to operational analytics, enabling automated tracking of robot health (dead-on-arrival stats), repair outcomes, and deep-dive analyses like battery sizing across product versions.',
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
    Skill(title: 'Programming', skills: ['Python', 'SQL', 'Bash', 'Dart', 'TypeScript', 'JavaScript']),
    Skill(
      title: 'Frameworks & Libraries',
      skills: ['FastAPI', 'Flask', 'Airflow', 'Next.js', 'Spark', 'Kafka', 'dbt'],
    ),
    Skill(
      title: 'Cloud & DevOps',
      skills: ['AWS', 'GCP', 'Docker', 'Gitlab', 'Ansible', 'CI/CD'],
    ),
    Skill(title: 'Data Engineering', skills: ['ETL', 'Data Modeling', 'Data Warehousing', 'Data Quality Management', 'Lambda architecture', 'Real-time processing', 'Batch processing', 'NoSQL']),
    Skill(
      title: 'Visualization',
      skills: ['Looker', 'Grafana', 'Metabase'],
    ),
    Skill(title: 'Product & Project Management', skills: ['Agile Development', 'Stakeholder Management', 'Client communication', 'Cross-team collaboration']),
    Skill(
      title: 'Management',
      skills: ['Team leadership', 'recruiting', 'onboarding', 'mentoring', 'remote teamwork'],
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
      technologies: ['Flutter', 'Dart', 'Riverpod', 'Firebase'],
    ),
    Project(
      title: 'Keep in Touch',
      description: 'Mobile app that helps introverts keep in touch regularly with people',
      githubUrl: 'https://github.com/kristaloverbeer/keep_in_touch',
      technologies: ['Flutter', 'Dart', 'Riverpod', 'Hive', 'Firebase'],
    ),
    Project(
      title: 'Server NAS',
      description: 'Home server & NAS to self-host and provide services to myself, friends and family.',
      technologies: ['TrueNAS Scale', 'Docker'],
    )
  ];
}
