<a name="readme-top"></a>

<!-- PROJECT DESCRIPTION -->

# 📖 HABA-Na-HABA USSD APPLICATION <a name="about-project"></a>

This is an application designed to connect waste points with vulnerable groups, enabling people to collect food that's about to be wasted for their own use. This application uses Africa's Talking API for USSD functionality and a Rails backend.

### Key Features <a name="key-features"></a>

- Geolocation technology.
- Real-Time Notifications.
- Surplus Food and  needs Listings.
- User-Friendly Interface.
- Feedback and Rating System
- Ussd functionality for the app.

### Prerequisites

In order to run this project you need:

- Ruby on Rails Environment
- Africa's Talking Account
- Africa's Talking Gem
- Rails Application Setup
- Environment Configuration
- Controller and Routes
- Controller Logic
- Africa's Talking Callback URL
- Ngrok (for Local Development)
- Testing

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://africastalking.com/ussd">Africas talking</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Setup

Clone this repository to your dist folder:

```
git@github.com:Ayokunnumi1/zero-hunger-hackathon.git
cd zero-hunger-hackathon
```
### Create a New Rails App
``` 
rails new zero-hunger-hackathon
cd zero-hunger-hackathon
```

#### Africas talking API
1. Sign Up for Africa's Talking
- Visit [Africa's Talking](https://africastalking.com/ussd).
- Click on "Sign Up" and create a new account.
2. Verify Your Account
- Check your email for a verification link from Africa's Talking.
- Click the link to verify your account.
3. Login to Your Africa's Talking Account
- Go to Africa's Talking Login.
- Enter your credentials and log in.
4. Create a New Application
In the dashboard, 
- Navigate to "Sandbox Apps" or "Production Apps".
- Click on "Create a New App".
- Enter a name for your application (e.g., "USSDApp").
- Save your new application.
5. Obtain API Key
- In your application dashboard, find your "API Key".
- Copy the API key for use in your Rails application.
6. Set Up a USSD Channel
- Navigate to "USSD" in the dashboard.
- Click on "Create Channel" or "Add Service Code".
- Follow the prompts to set up a USSD code (e.g., *123#).
- Link the USSD code to your application.
7. Configure Callback URL
- Set the "Callback URL" to point to your Rails application's endpoint (e.g., https://yourdomain.com/ussd).
Use Ngrok for local development (e.g., https://your-ngrok-subdomain.ngrok.io/ussd).
8. Add Africa's Talking Credentials to Rails

#### Ngrok
- Go to [ngrok](https://ngrok.com/) and sign up for a free account or login if you already have one.
- To install ngrok, visit [the download page](https://ngrok.com/download).
- To connect your account to ngrok run ``` ngrok authtoken <your authtoken> ``` and replace <your authtoken> with your authtoken.
- We will get back to ngrok later, let's first setup our rails app.


### Ruby gems
- gem 'rack-cors'
- gem 'africastalking'```.
- Add the following gems to your gemfile and run 
``` bundle install ```.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Video Demo <a name="live-demo"></a>

- [Live Video Link]()


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Utilize iot devices for food delivery
- Feedback functionality.

### Usage

Use this project in the sandbox demo of Africastalking ussd API.

## 👥 Authors <a name="authors"></a>

👤 **Ayokunnumi Omololu**

- GitHub: [@Ayokunnumi1](https://github.com/Ayokunnumi1)
- Twitter: [@Ayokunnumi](https://twitter.com/AyokunnumiA)
- LinkedIn: [@Ayokunnumi](https://www.linkedin.com/in/ayokunnumiomololu)

👤 **Austin Obimbo**
- GitHub: [@Obimbo07](https://github.com/Obimbo07)
- Twitter: [@Austine](https://twitter.com/austsine_)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/austin-obimbo-9a613623a/)


👤 **Md Mahadi Hasan Rifat**
- GitHub: (https://github.com/Rifat8080)
- Twitter: (https://twitter.com/mdmahadirifat98)
- LinkedIn: (https://www.linkedin.com/in/md-mahadi-hasan-rifat-8b7851265/)

👤 **Al Amin Khan Shakil**

- GitHub: [Al Amin Khan Shakil](https://github.com/Al-Amin-Khan-Shakil)
- Twitter: [Al Amin Khan Shakil](https://twitter.com/AlAminKhan85004)
- LinkedIn: [Al Amin Khan Shakil](https://www.linkedin.com/in/al-amin-khan-shakil/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Ayokunnumi1/zero-hunger-hackathon/issues).

## ⭐️ Show your support <a name="support"></a>

You are welcome to support this project by giving leaving a star on the project.

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Acknowledgements to Tech to the rescue team and haba na haba for giving us a platform to code to fight food hunger.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>