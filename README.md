# py-batch
Simple batch file repo to set up Python environment and execute targeted script.

## Configuration
Configuring `py_exe.bat` is simple, simply change `joke.py` to your desired Python file.

```batch
SET "py_file=joke.py" 
```

"Why is this hardcoded?", you may ask. This is because the batch file is intended to be executed by a non-CMD-savy operator. For example, say you're the only person in your workplace who knows how to set up and run a small Flask utility webapp. If the hosting server undergoes a forced restart, your webapp is down. Ah! But if someone on your team knows to double click `py_exe.bat`, then your webapp is back online.
