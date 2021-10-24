# !/bin/sh 

extensions=("mindaro.mindaro" "GoogleCloudTools.cloudcode" "ms-azuretools.vscode-docker" "HashiCorp.terraform" "p1c2u.docker-compose" "ms-toolsai.jupyter" "ms-toolsai.jupyter-keymap" "ms-toolsai.jupyter-renderers" "ms-kubernetes-tools.vscode-kubernetes-tools" "MS-vsliveshare.vsliveshare" "esbenp.prettier-vscode" "ms-python.vscode-pylance" "ms-vscode-remote.remote-containers" "rangav.vscode-thunder-client" "vscodevim.vim" "VisualStudioExptTeam.vscodeintellicode" "redhat.vscode-yaml" "DavidAnson.vscode-markdownlint" "eamodio.gitlens")


for item in ${extensions[@]}
do
    echo $item
    code --install-extension $item
done

