$( -> 
    for el in document.getElementsByTagName("pre")
        el.className += "prettyprint linenums"
    prettyPrint()
)