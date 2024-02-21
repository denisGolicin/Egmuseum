from flask import Flask
import webview

server = Flask(__name__, static_folder='./assets', template_folder='./templates')
webview.create_window('Flask example', server)
webview.start()