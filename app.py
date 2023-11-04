from flask import Flask, jsonify
import ansible_runner

app = Flask(__name__)

@app.route('/greet/<string:name>', methods=['GET'])
def greet(name):
    r = ansible_runner.run(private_data_dir='./', playbook='playbook.yml')
    print("{}: {}".format(r.status, r.rc))
    return jsonify(message=f"Hello, {name}!")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8090)	
