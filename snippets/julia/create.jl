import REPL

for i in sort(collect(keys(REPL.REPLCompletions.latex_symbols)))
    name = replace(i, "/" => "by", count=2)
    name = string("\\\\",name[2:end]) 
    open(name * " - " * name[2:end], "w") do io
        write(io, REPL.REPLCompletions.latex_symbols[i]*" ")
    end
end
