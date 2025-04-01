import Image from "next/image"
import Link from "next/link"
import { Github, Linkedin, Mail, Twitter } from "lucide-react"

import { Button } from "@/components/ui/button"
import { Card, CardContent } from "@/components/ui/card"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"

export default function Home() {
    return (
        <div className="flex min-h-screen flex-col bg-background">
            <header className="sticky top-0 z-10 w-full border-b bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60">
                <div className="container flex h-14 items-center">
                    <div className="mr-4 hidden md:flex">
                        <Link href="/" className="mr-6 flex items-center space-x-2">
                            <span className="font-bold">John Doe</span>
                        </Link>
                        <nav className="flex items-center space-x-6 text-sm font-medium">
                            <Link href="#about" className="transition-colors hover:text-foreground/80">
                                About
                            </Link>
                            <Link href="#experience" className="transition-colors hover:text-foreground/80">
                                Experience
                            </Link>
                            <Link href="#education" className="transition-colors hover:text-foreground/80">
                                Education
                            </Link>
                            <Link href="#contact" className="transition-colors hover:text-foreground/80">
                                Contact
                            </Link>
                        </nav>
                    </div>
                    <div className="flex flex-1 items-center justify-between space-x-2 md:justify-end">
                        <div className="w-full flex-1 md:w-auto md:flex-none">
                            <Button variant="outline" className="hidden md:flex">
                                <Mail className="mr-2 h-4 w-4" />
                                Contact Me
                            </Button>
                        </div>
                    </div>
                </div>
            </header>
            <main className="flex-1">
                <section className="container grid items-center gap-6 pb-8 pt-6 md:py-10">
                    <div className="flex flex-col items-start gap-4 md:flex-row md:gap-8">
                        <div className="relative h-32 w-32 overflow-hidden rounded-full md:h-40 md:w-40">
                            <Image
                                src="/placeholder.svg?height=160&width=160"
                                alt="Profile picture"
                                width={160}
                                height={160}
                                className="object-cover"
                                priority
                            />
                        </div>
                        <div className="flex flex-col gap-2">
                            <h1 className="text-3xl font-bold leading-tight tracking-tighter md:text-5xl">John Doe</h1>
                            <p className="text-xl text-muted-foreground">Senior Software Engineer</p>
                            <div className="flex gap-4">
                                <Link href="https://github.com" target="_blank" rel="noopener noreferrer">
                                    <Button variant="ghost" size="icon">
                                        <Github className="h-5 w-5" />
                                        <span className="sr-only">GitHub</span>
                                    </Button>
                                </Link>
                                <Link href="https://linkedin.com" target="_blank" rel="noopener noreferrer">
                                    <Button variant="ghost" size="icon">
                                        <Linkedin className="h-5 w-5" />
                                        <span className="sr-only">LinkedIn</span>
                                    </Button>
                                </Link>
                                <Link href="https://twitter.com" target="_blank" rel="noopener noreferrer">
                                    <Button variant="ghost" size="icon">
                                        <Twitter className="h-5 w-5" />
                                        <span className="sr-only">Twitter</span>
                                    </Button>
                                </Link>
                                <Link href="mailto:john.doe@example.com">
                                    <Button variant="ghost" size="icon">
                                        <Mail className="h-5 w-5" />
                                        <span className="sr-only">Email</span>
                                    </Button>
                                </Link>
                            </div>
                        </div>
                    </div>
                    <div className="space-y-8">
                        <section id="about" className="space-y-4">
                            <h2 className="text-2xl font-bold tracking-tight">About Me</h2>
                            <p className="text-muted-foreground">
                                I'm a passionate software engineer with over 8 years of experience building web applications. I
                                specialize in frontend development with React and TypeScript, but I'm also comfortable working with
                                backend technologies. I enjoy solving complex problems and creating intuitive user experiences.
                            </p>
                        </section>
                        <Tabs defaultValue="experience" className="w-full">
                            <TabsList className="grid w-full grid-cols-3">
                                <TabsTrigger value="experience">Experience</TabsTrigger>
                                <TabsTrigger value="education">Education</TabsTrigger>
                                <TabsTrigger value="skills">Skills</TabsTrigger>
                            </TabsList>
                            <TabsContent value="experience" className="space-y-4" id="experience">
                                <h2 className="text-2xl font-bold tracking-tight">Work Experience</h2>
                                <div className="grid gap-6">
                                    <Card>
                                        <CardContent className="p-6">
                                            <div className="flex flex-col gap-1">
                                                <div className="flex items-start justify-between">
                                                    <h3 className="font-semibold">Senior Software Engineer</h3>
                                                    <span className="text-sm text-muted-foreground">2020 - Present</span>
                                                </div>
                                                <p className="text-sm text-muted-foreground">Tech Company Inc.</p>
                                                <ul className="mt-2 list-inside list-disc text-sm text-muted-foreground">
                                                    <li>Led the development of the company's flagship product</li>
                                                    <li>Mentored junior developers and conducted code reviews</li>
                                                    <li>Implemented CI/CD pipelines to improve deployment efficiency</li>
                                                    <li>Reduced application load time by 40% through performance optimizations</li>
                                                </ul>
                                            </div>
                                        </CardContent>
                                    </Card>
                                    <Card>
                                        <CardContent className="p-6">
                                            <div className="flex flex-col gap-1">
                                                <div className="flex items-start justify-between">
                                                    <h3 className="font-semibold">Software Engineer</h3>
                                                    <span className="text-sm text-muted-foreground">2017 - 2020</span>
                                                </div>
                                                <p className="text-sm text-muted-foreground">Digital Solutions Ltd.</p>
                                                <ul className="mt-2 list-inside list-disc text-sm text-muted-foreground">
                                                    <li>Developed and maintained multiple client-facing web applications</li>
                                                    <li>Collaborated with designers to implement responsive UI components</li>
                                                    <li>Integrated third-party APIs and services</li>
                                                    <li>Participated in agile development processes</li>
                                                </ul>
                                            </div>
                                        </CardContent>
                                    </Card>
                                    <Card>
                                        <CardContent className="p-6">
                                            <div className="flex flex-col gap-1">
                                                <div className="flex items-start justify-between">
                                                    <h3 className="font-semibold">Junior Developer</h3>
                                                    <span className="text-sm text-muted-foreground">2015 - 2017</span>
                                                </div>
                                                <p className="text-sm text-muted-foreground">Web Innovations</p>
                                                <ul className="mt-2 list-inside list-disc text-sm text-muted-foreground">
                                                    <li>Assisted in the development of web applications using JavaScript and PHP</li>
                                                    <li>Fixed bugs and implemented minor features</li>
                                                    <li>Created and maintained documentation</li>
                                                    <li>Participated in team meetings and planning sessions</li>
                                                </ul>
                                            </div>
                                        </CardContent>
                                    </Card>
                                </div>
                            </TabsContent>
                            <TabsContent value="education" className="space-y-4" id="education">
                                <h2 className="text-2xl font-bold tracking-tight">Education</h2>
                                <div className="grid gap-6">
                                    <Card>
                                        <CardContent className="p-6">
                                            <div className="flex flex-col gap-1">
                                                <div className="flex items-start justify-between">
                                                    <h3 className="font-semibold">Master of Computer Science</h3>
                                                    <span className="text-sm text-muted-foreground">2013 - 2015</span>
                                                </div>
                                                <p className="text-sm text-muted-foreground">University of Technology</p>
                                                <p className="mt-2 text-sm text-muted-foreground">
                                                    Specialized in Software Engineering with a focus on web technologies and distributed systems.
                                                    Graduated with honors.
                                                </p>
                                            </div>
                                        </CardContent>
                                    </Card>
                                    <Card>
                                        <CardContent className="p-6">
                                            <div className="flex flex-col gap-1">
                                                <div className="flex items-start justify-between">
                                                    <h3 className="font-semibold">Bachelor of Science in Computer Science</h3>
                                                    <span className="text-sm text-muted-foreground">2009 - 2013</span>
                                                </div>
                                                <p className="text-sm text-muted-foreground">State University</p>
                                                <p className="mt-2 text-sm text-muted-foreground">
                                                    Completed coursework in algorithms, data structures, software development, and database
                                                    systems. Participated in various hackathons and coding competitions.
                                                </p>
                                            </div>
                                        </CardContent>
                                    </Card>
                                </div>
                            </TabsContent>
                            <TabsContent value="skills" className="space-y-4">
                                <h2 className="text-2xl font-bold tracking-tight">Skills</h2>
                                <div className="grid gap-6 sm:grid-cols-2">
                                    <Card>
                                        <CardContent className="p-6">
                                            <h3 className="mb-2 font-semibold">Technical Skills</h3>
                                            <div className="flex flex-wrap gap-2">
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">JavaScript</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">TypeScript</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">React</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Next.js</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Node.js</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">HTML/CSS</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Tailwind CSS</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Git</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">SQL</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">GraphQL</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Docker</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">AWS</div>
                                            </div>
                                        </CardContent>
                                    </Card>
                                    <Card>
                                        <CardContent className="p-6">
                                            <h3 className="mb-2 font-semibold">Soft Skills</h3>
                                            <div className="flex flex-wrap gap-2">
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Team Leadership</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Communication</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Problem Solving</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Time Management</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Mentoring</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Agile Methodologies</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Project Management</div>
                                                <div className="rounded-md bg-muted px-2 py-1 text-sm">Critical Thinking</div>
                                            </div>
                                        </CardContent>
                                    </Card>
                                </div>
                            </TabsContent>
                        </Tabs>
                    </div>
                </section>
                <section id="contact" className="container py-8">
                    <h2 className="mb-4 text-2xl font-bold tracking-tight">Contact Me</h2>
                    <Card>
                        <CardContent className="p-6">
                            <div className="grid gap-4 sm:grid-cols-2">
                                <div>
                                    <h3 className="mb-2 font-semibold">Get in Touch</h3>
                                    <p className="mb-4 text-sm text-muted-foreground">
                                        Feel free to reach out if you'd like to discuss potential opportunities or just want to connect.
                                    </p>
                                    <div className="space-y-2">
                                        <p className="flex items-center text-sm">
                                            <Mail className="mr-2 h-4 w-4" />
                                            john.doe@example.com
                                        </p>
                                        <div className="flex gap-4">
                                            <Link href="https://github.com" target="_blank" rel="noopener noreferrer">
                                                <Button variant="outline" size="icon">
                                                    <Github className="h-4 w-4" />
                                                    <span className="sr-only">GitHub</span>
                                                </Button>
                                            </Link>
                                            <Link href="https://linkedin.com" target="_blank" rel="noopener noreferrer">
                                                <Button variant="outline" size="icon">
                                                    <Linkedin className="h-4 w-4" />
                                                    <span className="sr-only">LinkedIn</span>
                                                </Button>
                                            </Link>
                                            <Link href="https://twitter.com" target="_blank" rel="noopener noreferrer">
                                                <Button variant="outline" size="icon">
                                                    <Twitter className="h-4 w-4" />
                                                    <span className="sr-only">Twitter</span>
                                                </Button>
                                            </Link>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <h3 className="mb-2 font-semibold">Location</h3>
                                    <p className="text-sm text-muted-foreground">San Francisco, California</p>
                                    <p className="mt-4 text-sm text-muted-foreground">
                                        Currently open to remote opportunities worldwide.
                                    </p>
                                </div>
                            </div>
                        </CardContent>
                    </Card>
                </section>
            </main>
            <footer className="border-t py-6">
                <div className="container flex flex-col items-center justify-between gap-4 md:flex-row">
                    <p className="text-center text-sm text-muted-foreground">
                        © {new Date().getFullYear()} John Doe. All rights reserved.
                    </p>
                    <div className="flex gap-4">
                        <Link href="https://github.com" target="_blank" rel="noopener noreferrer">
                            <Button variant="ghost" size="icon">
                                <Github className="h-4 w-4" />
                                <span className="sr-only">GitHub</span>
                            </Button>
                        </Link>
                        <Link href="https://linkedin.com" target="_blank" rel="noopener noreferrer">
                            <Button variant="ghost" size="icon">
                                <Linkedin className="h-4 w-4" />
                                <span className="sr-only">LinkedIn</span>
                            </Button>
                        </Link>
                        <Link href="https://twitter.com" target="_blank" rel="noopener noreferrer">
                            <Button variant="ghost" size="icon">
                                <Twitter className="h-4 w-4" />
                                <span className="sr-only">Twitter</span>
                            </Button>
                        </Link>
                    </div>
                </div>
            </footer>
        </div>
    )
}
