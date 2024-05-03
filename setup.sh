#!/bin/bash


curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
    | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
    && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
    | sudo tee /etc/apt/sources.list.d/ngrok.list \
    && sudo apt update \
    && sudo apt install ngrok


ngrok config add-authtoken 2YJvQcMqZM4JRIkqJsI9lQoxpUo_3B4cunHtFNnn6UP1VK6nw


curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb &&


sudo dpkg -i cloudflared.deb &&


sudo cloudflared service install eyJhIjoiYzRiY2U3MDU3MDllZDdiYWE2Y2QyMzI3N2Y5ZWZmZWMiLCJ0IjoiZTgwYzJhNGYtNDlkZi00YTc2LWJhNzYtNjU3YjMwOGMzZWE4IiwicyI6IlpqQTFaakpqTlRBdE5tUXlaaTAwTjJVMUxXSTRaR1V0TkRGbE56TmhaVGMyWXpNdyJ9