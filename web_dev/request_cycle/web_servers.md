1. What are some of the key design philosophies of the Linux operating system?
The user knows what he/she is doing. I.e. He/she is a computer literate from the start. Philosophy:
Small is Beautiful
Each Program Does One Thing Well
Prototype as Soon as Possible
Choose Portability Over Efficiency
Store Data in Flat Text Files
Use Software Leverage
Use Shell Scripts to Increase Leverage and Portability
Avoid Captive User Interfaces
Make Every Program a Filter


2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS runs its own copy of an operating system. The user has full access to the instance of the OS and can thus install almost any software that runs on that OS. A VPS has more stability and reliability for basic web hosting needs. Easily scalable when needed. Cost effective for small websites.


3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

- it is more probe to mistakes or software bugs. If it ran as a limited user, at most it can damage stuff in the home directory.
- a malicious software can cause more harm since it has full permissions.
- can delete all files with rm -rf*
- it is not needed for most uses, except for admin work