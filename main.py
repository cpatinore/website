from flask import Flask, render_template, request
import os

# Server initialization
app = Flask(__name__, static_folder = 'assets',)


@app.route('/', methods = ['GET'])
def index():
    """Generar página principal"""
    
    return render_template('index.html')


"""--------------------------------- MAIN ----------------------------------"""
if __name__ == "__main__":
    """Main execution of the program"""

    # app.debug = True # Hot reloading
    app.run(port = int(os.environ.get('PORT', 3000))) # Server execution port