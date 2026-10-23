trim() {
    local start=0
    local len=${#1}
    while [[ $start -lt $len && ${1:start:1} == " " ]]; do
        ((start++))
    done
    if [[ $start -lt $len ]]; then
        local e=$((len - 1))
        while [[ $e -ge $start && ${1:e:1} == " " ]]; do
            ((e--))
        done
        echo "${1:start:$((e-start+1))}"
    else
        echo ""    
    fi
}

trim "  das  g"
trim ""
trim "g"
