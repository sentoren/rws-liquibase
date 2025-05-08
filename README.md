# rws-liquibase
real world scenario liquibase project to solidify learnings

# project steps:
Now that you have a solid understanding of the foundational elements of Liquibase, you will now build out a real-world scenario of using Liquibase inside of a CI/CD process. In this scenario, you will have three different databases:
1. Dev
2. Test
3. Prod
Developers will push their code to a repository which will trigger a deployment to the Dev database. Once all of the code is submitted by developers, the code will be deployed to the Test database. If any of the changesets fail in the Test database, the Test database should be rolled back. If the deployment to the Test database is successful, an archive of the changesets will be created. Deploy successful archive to the Prod database.

## Tools:
- Jenkins
- Liquibase
- GitHub
- Database of your choice

**Helpful Links**
- [Efficient Git Branching Strategy Every Developer Should Know](https://betterprogramming.pub/efficient-git-branching-strategy-every-developer-should-know-f1034b1ba041 "‌")
- [https://www.youtube.com/watch?v=B_2FXWI6CWg](https://www.youtube.com/watch?v=B_2FXWI6CWg "smartCard-inline")
- If using Jenkins on localhost, [https://ngrok.com/docs#expose](https://ngrok.com/docs#expose "smartCard-inline") can be used to allow the GitHub webhook to push to a localhost Jenkins instance.

**Working example repo**
[https://github.com/liquibase/JenkinsPipelineExample](https://github.com/liquibase/JenkinsPipelineExample "smartCard-inline")


### Milestones for project:
- [ ] Github repository set up
- [ ] Jenkins running
- [ ] Jenkins pipeline set up to pull from Github repo
- [ ] Liquibase able to be used in Jenkins pipeline
- [ ] PR/Pushes to the repo deploys changeset to the Dev database
- [ ] Deploying to the Test Database: Failure, any changesets deployed need to be rolled back
- [ ] Deploying to the Test Database: Success, archive changelog/changesets
- [ ] Deploy Archive to Prod database
- [ ] **Bonus**: Create a utility pipeline to be able to run specific Liquibase commands against one of the target databases (Dev, Test, Prod)