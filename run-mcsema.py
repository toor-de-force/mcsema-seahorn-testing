#!/usr/bin/env python3

import subprocess
import os
from pathlib import Path
import shutil
import docker
import glob

disassemble = '/app/remill/remill-build/tools/mcsema/tools/mcsema_disass/dyninst/mcsema-dyninst-disass'
lift = '/app/remill/remill-build/tools/mcsema/mcsema-lift-4.0'
cleanup = "chown -R " + str(os.getuid()) + ":" + str(os.getgid()) + " /tmp"
top_dir = 'tests/generated'
docker_image = 'gfoudree/mcsema_dyninst'

client = docker.from_env()
client.images.pull(docker_image)

for opt in ["0", "1", "2"]:
    llvm_dir = Path(os.path.join(top_dir, opt, 'decompiled_llvm'))
    if llvm_dir.exists() and llvm_dir.is_dir():
        shutil.rmtree(llvm_dir)
    os.mkdir(llvm_dir)

    binary_dir = os.path.join(top_dir, opt, "binary")
    file_list = [file for file in os.listdir(binary_dir)]

    for idx, file in enumerate(file_list):
        print("Resolving " + file + ", " + str(idx + 1) + " of " + str(len(file_list)) + " at optimization " + opt)
        name = file.split('.')[0]
        binary_location = os.path.join('/tmp', binary_dir, file)
        llvm_location = os.path.join('/tmp', llvm_dir, name + ".dcmp.ll")
        # Generate CFG
        cmd = disassemble + " --binary " + binary_location + " --output /tmp/" + name + ".cfg"
        client.containers.run(docker_image, cmd, volumes={os.getcwd(): {'bind': '/tmp/', 'mode': 'rw'}})
        cmd = lift + " --cfg /tmp/" + name + ".cfg --output /tmp/" + name + ".bc --explicit-args"
        client.containers.run(docker_image, cmd, volumes={os.getcwd(): {'bind': '/tmp/', 'mode': 'rw'}})
        client.containers.run(docker_image, cleanup, volumes={os.getcwd(): {'bind': '/tmp/', 'mode': 'rw'}})

        cmd = "llvm-dis-10 " + name + ".bc"
        try:
            args = cmd.split()
            subprocess.check_output(args, stderr=subprocess.DEVNULL)
        except:
            print("Conversion to .ll for " + name + "failed. Rerun with: " + cmd)

        try:
            cmd = "mv " + name + ".ll " + llvm_location.replace('/tmp/', '')
            args = cmd.split()
            subprocess.check_output(args)

            cmd = "rm " + name + ".bc"
            args = cmd.split()
            subprocess.check_output(args)

            cmd = "rm " + name + ".cfg"
            args = cmd.split()
            subprocess.check_output(args)
        except:
            print("Cleaning up " + name + "failed.")


    for filename in glob.glob("./mcsema*"):
        os.remove(filename)



