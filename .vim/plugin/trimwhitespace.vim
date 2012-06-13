" Removes trailing spaces
function TrimWhiteSpace()
        %s/\s*$//
        ''
:endfunction

map <leader>r :call TrimWhiteSpace()<CR>
